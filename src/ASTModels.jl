module ASTModels
export
  replace_subexpr!, substitute!, FloatX, cast, traverse_noconflict_expr_functions, expr, @expr,
  Model, default_input_fields, default_output_fields, merge_models, TypeWithModel,
  astfunc, @astfunc, clone, TestTypeWithModel, traverse_noconflict_methods_sig, create_function_file,
  traverse_ASTleaves

using Continuables
include("./util.jl")


## expr functionalities ---------------------------------------------------------------------------------------------------------------------------

# when bringing anything else than Expr into an Expr, we preserve the possibility to cast the respective object
cast = identity

expr() = Expr(:_)  # empty expression

function expr(e)
  if isa(e, Symbol)
    :($e::Any)
  elseif !isa(e, Expr)
    :(cast($e))
  else
    e
  end
end

# expr(es...) = expr.(es)  # single case is already taken over by expr(e)

"""
@expr a b c
will expand to
```
a = :(a::Any)
b = :(b::Any)
c = :(c::Any)
```
creating new basic, identifyable Expressions
"""
macro expr(ss::Symbol...)
  es = map(ss) do s
    # expr should be this package's `expr`
    rhs = QuoteNode(expr(s)) # we want this to stay expression
    :($s = $rhs)
  end
  esc(Expr(:block, es..., nothing))  # hygiene
end

"""
creates a function expr which mimics a given function however with new types
"""
function create_expr_function(s::Symbol, types, m::Module=Base)
  vars = [Symbol(t===Expr ? :e : :o, i) for (i, t) in enumerate(types)]

  if (string(s)[1] ∈ ['.', '@']  # either is dot syntax (deprecated I thought, but still occurs, method seems to not exist) or a macro
    || eval(m, :(method_exists($s, $types)))  # or method already exists in the given package (maybe better to just execute this within this scope? would it be the global scope?)
    || (string(s) != function_name(eval(m, s)))) # or maybe this is a reference to something else, i.e. the symbol is not the same as the string transformation
    return
  end

  vars_typed = [Expr(:(::), x, t) for (x, t) in zip(vars, types)]
  vars_casted = [t === Expr ? x : :(expr($x)) for (x, t) in zip(vars, types)]

  f_head = Expr(:call, :($s), vars_typed...)
  f_body = Expr(:call, :Expr, :(:call), QuoteNode(s), vars_casted...)
  Expr(:function, f_head, f_body)
end

"""
continuable over function expressions for Expr types
"""
traverse_noconflict_expr_functions(mod::Module=Base, exclude=[]) = cont -> begin
  exclude = Set(exclude)
  for s in names(mod)
    if s in exclude
      continue
    end
      f = eval(mod, s)
      if isa(f, Function)
        traverse_noconflict_methods_sig(f) do types
          expr = create_expr_function(s, types, mod)
          if expr !== nothing
            cont(expr)
          end
        end
      end
  end
end

traverse_noconflict_expr_functions(cont, mod::Module=Base, exclude=[]) = traverse_noconflict_expr_functions(mod, exclude)(cont)


function create_function_file(path::String, mod::Module=Base)
  open(path, "w") do f
    write(f, "importall " * string(mod) * "\n")
    traverse_noconflict_expr_functions(Base) do expr
      write(f, string(expr) * "\n")
    end
  end
end
# csuppress(eval, Union{StackOverflowError, MethodError}))
# [:show, :haskey, :push!, :display, :setindex!]


# run for base (now everything seems to work fine, no exceptions anylonger):
# importall Base
# traverse_noconflict_expr_functions(Base)(eval)

# build using create_function_file()
include("./base_expr.jl")  # much faster than computing the functions itself



## General helpers for altering AST ---------------------------------------------------------------------------------------------------------

"""
Replace within an Expression on the toppest level only
"""
function replace_exprargs!(expr::Expr, old, new)
  for (i, subexpr) in enumerate(expr.args)
    if subexpr == old
      expr.args[i] = new
    end
  end
end

"""
Replace recursively within an Expression
"""
function replace_subexpr!(expr::Expr, old, new)
  replace_exprargs!(expr, old, new)
  for subexpr in expr.args
    replace_subexpr!(subexpr, old, new)
  end
end

replace_subexpr!(s, old, new) = ()  # there is no way to replace within anything else than expr


"""
Changes the original Expression to the substitute Expression.
Caution! this literally makes the old Expression to the substituted one. All references to ``ori`` will point to the contents of ``sub`` afterwards.
"""
function substitute!(ori::Expr, sub::Expr)
  old = Expr(ori.head, ori.args...)
  ori.head = sub.head
  ori.args = sub.args
  # ori.typ = sub.typ  # typ is not supported and might be deleted in future julia versions
  old
end


## models ---------------------------------------------------------------------------------------------------------------------------

typealias Model VectorAssociative{String, Expr}
# typealias Model Dict{String, Vector{Expr}}

default_input_fields = ["inputs"]
default_output_fields = ["outputs"]

function merge_models(m::Model, others::Model...; input_fields=default_input_fields, output_fields=default_output_fields)
  d = merge_concat(m, others...)
  inputlike = Set(x for k ∈ input_fields for x ∈ d[k])
  outputlike = Set(x for k ∈ output_fields for x ∈ d[k])  # Set() - not working because of some weird non-boolean error
  # println(input)
  for k in input_fields
    d[k] = [x for x ∈ d[k] if x ∉ outputlike]
  end
  for k in output_fields
    d[k] = [x for x ∈ d[k] if x ∉ inputlike]
  end
  d
end

# bringing merge_models to Struct with internal dictionary

abstract TypeWithModel
type TestTypeWithModel <: TypeWithModel
  dict::Model
  #... add you favourite specific attributes and your favourite constructor
end

import Base.convert
convert(::Type{Model}, x::TypeWithModel) = x.dict
merge_models(models::TypeWithModel...) = merge_models([convert(Model, m) for m in models]...)  # we somehow have to manually call convert.


## building function out of astmodels


# functions unfortunately don't work, as ``eval`` is going to execute the code within ASTModels, however we want it to be executed in the calling evironment
# still we need can use them for clone, where we only need a anonymous function

# """ build a function out of AST references """
# function astfunc(func_name, args, body)  # named version
#   # we need to have Expressions
#   new_symbols = [:($(Symbol(n))::Any) for n in take('a':'z', length(args))]
#   old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
#   f_def = Expr(:call, func_name, new_symbols...)
#   eval(Expr(:(=), f_def, body))  # evaluate function
#   new_symbols = substitute!.(args, old_symbols)
#   eval(Symbol(func_name))
# end

function astfunc(args, body)  # anonymous version
  # we need to have Expressions
  args = [args...]  # for .() broadcasting
  new_symbols = [:($(Symbol("p", i))::Any) for i in 1:length(args)]
  old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
  f_def = Expr(:tuple, new_symbols...)
  f = eval(Expr(:(->), f_def, body))  # evaluate function
  new_symbols = substitute!.(args, old_symbols)
  f
end

""" macro to build a function out of AST references """
macro astfunc(e)
  if e.head == :(=)
    f = e.args[1]
    body = e.args[2]
    f_name = QuoteNode(f.args[1])  # we need f_name to be a symbol if inserted below, not a function
    args = f.args[2:end]

    expr = quote
      args = eval.($args)  # seamingly macros don't work well with overwriting
      body = eval($body)

      new_symbols = [:($(Symbol(n))::Any) for n in take('a':'z', length(args))]
      old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
      f_def = Expr(:call, $f_name, new_symbols...)
      eval(Expr(:(=), f_def, body))  # evaluate function
      new_symbols = substitute!.(args, old_symbols)
      eval(Symbol($f_name))
    end

  elseif e.head == :(->)
    body = e.args[2]
    if e.args[1].head == :tuple
      args = e.args[1].args
    else
      args = (e.args[1],)  # single symbol -> tuple of single symbol
    end

    expr = quote
      args = eval.($args)  # seamingly macros don't work well with overwriting
      body = eval($body)

      # execute new function in calling namespace in order to refer to correct `cast` function
      # astfunc(args, body)  # this would be executed in ASTModels namespace, referring to its cast function for instance
      new_symbols = [:($(Symbol(n))::Any) for n in take('a':'z', length(args))]
      old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
      f_def = Expr(:tuple, new_symbols...)
      f = eval(Expr(:(->), f_def, body))  # evaluate function
      new_symbols = substitute!.(args, old_symbols)
      f
    end

  else
    error("Use this macro for simple function syntax only.")
  end

  esc(expr)
end

"""
clone a given graph with optional new inputs (otherwise old inputs are preserved)
"""
function clone(inputs, outputs; new_inputs=[])
  f = astfunc(inputs, outputs)
  if length(new_inputs) == 0
    new_inputs = inputs  # use old inputs
  end
  f(new_inputs...)
end

clone(outputs) = clone(collect(traverse_ASTleaves(outputs)), outputs)  # new_inputs make no sense if you don't know yet what the inputs are


traverse_ASTleaves(l::Union{Array,Tuple}) = cont -> begin
  for a in l
    if isa(a, Expr)
      traverse_ASTleaves(a)(cont)
    end
  end
end

traverse_ASTleaves(expr::Expr) = cont -> begin
  if expr.head==:(::) && isa(expr.args[1], Symbol)
    # for simplicity we regard every symbol complemented with type check as a leave
    cont(expr)

  elseif expr.head ∈ [:(=), :function]
    # skip over assignment part, as this naturally includes symbols
    traverse_ASTleaves(expr.args[2:end])(cont)

  else
    # travers everything
    traverse_ASTleaves(expr.args)(cont)
  end
end
traverse_ASTleaves(cont, expr::Expr) = traverse_ASTleaves(expr)(cont)

end # module
