module ASTModels
export
  replace_subexpr!, substitute!, FloatX, cast, traverse_noconflict_expr_functions, expr, @expr,
  Model, default_input_fields, default_output_fields, merge_models, TypeWithModel,
  astfunc, @astfunc, clone, TestTypeWithModel, traverse_noconflict_methods_sig, create_function_file,
  traverse_ASTleaves

using Continuables
using DataStructures
include("./util.jl")

## expr functionalities ---------------------------------------------------------------------------------------------------------------------------

# when bringing anything else than Expr into an Expr, we preserve the possibility to cast the respective object
cast(x) = x  # identity

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
macro expr(ss...)
  es = map(ss) do s
    # expr should be this package's `expr`
    rhs = QuoteNode(expr(s)) # we want this to stay expression

    if isa(s, Symbol)
      name = s
    elseif s.head == :(::) && isa(s.args[1], Symbol)
      name = s.args[1]
    else
      error("Can only handle blank symbols or additional ::Type checks.")
    end

    :($name = $rhs)
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

# input field convention:
# outputs and anything starting with out is an outputfield (this is due to there normally being a lot of input things and only a few output things)
function merge_models(m::Model, others::Model...)
  d = merge_concat(m, others...)

  inputlike, outputlike = Vector{Expr}(), Vector{Expr}()
  for k ∈ keys(d)
    if startswith(k, "out")
      append!(outputlike, d[k])
    else
      append!(inputlike, d[k])
    end
  end
  inputlike, outputlike = Set(inputlike), Set(outputlike)

  for k ∈ keys(d)
    if startswith(k, "out")
      d[k] = [x for x ∈ d[k] if x ∉ inputlike]
    else
      d[k] = [x for x ∈ d[k] if x ∉ outputlike]
    end
    isempty(d[k]) && delete!(d, k)
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

function clone(model::Model)
  model2 = copy(model)

  # copy all parameters
  for k in keys(model2)
    if startswith(k, "param")
      model2[k] = copy.(model2[k])
    end
  end

  # collect everything which is not output
  oldinputs = collect(Base.flatten([model[k] for k in keys(model) if !startswith(k, "out")]))
  newinputs = collect(Base.flatten([model2[k] for k in keys(model) if !startswith(k, "out")]))

  # new output variables
  for k in keys(model2)
    if startswith(k, "out")
      model2[k] = clone(oldinputs, model2[k], newinputs)
    end
  end
  model2
end

## building function out of astmodels ---------------------------------------------------------------------------


# functions unfortunately don't work, as ``eval`` is going to execute the code within ASTModels, however we want it to be executed in the calling evironment
# still we need can use them for clone, where we only need a anonymous function

# """ build a function out of AST references """
function astfunc{T<:Union{Tuple, Array, Expr}}(func_name::Symbol, args, body::T, mod::Module=Main, types=[extract_type_info(a) for a in args])  # named version
  # we need to have Expressions
  args = [args...]  # for .() broadcasting
  if T <: Tuple
    body = Expr(:tuple, body...)
  elseif T <: Array
    body = Expr(:vect, body...)
  end

  new_args = [Expr(:(::), Symbol("p", i), t) for (i, t) in enumerate(types)]
  old_symbols = substitute!.(args, new_args)  # Dict(zip(args, symbols))  ??
  f_def = Expr(:call, func_name, new_args...)
  eval(mod, Expr(:(=), f_def, body))  # evaluate function
  new_args = substitute!.(args, old_symbols)
  eval(mod, Symbol(func_name))
end

# astfunc{T<:Union{Tuple, Array, Expr}}(func_name::Symbol, args, body::T, mod::Module=Main, types=[extract_type_info(a) for a in args]) = astfunc(func_name, args, [extract_type_info(a) for a in args], body, mod)


function astfunc{T<:Union{Tuple, Array, Expr}}(args, body::T, mod::Module=Main, types=[extract_type_info(a) for a in args])  # default to interpret body as iterable
  # we need to have Expressions
  args = [args...]  # for .() broadcasting
  if T <: Tuple
    body = Expr(:tuple, body...)
  elseif T <: Array
    body = Expr(:vect, body...)
  end

  new_args = [Expr(:(::), Symbol("p", i), t) for (i, t) in enumerate(types)]
  old_symbols = substitute!.(args, new_args)
  f_def = Expr(:tuple, new_args...)
  f = eval(mod, Expr(:(->), f_def, body))  # evaluate function

  new_args = substitute!.(args, old_symbols)
  f
end

# astfunc{T<:Union{Tuple, Array, Expr}}(args, body::T, mod::Module=Main) = astfunc(args, , body, mod)

function _eval_args_body(args_plain, body, mod::Module=Main)
  args = [eval(mod, ASTModels.extract_symbol(a)) for a in args_plain]
  if body.head ∈ [:tuple, :vect]
    # body.args .= eval(mod, body.args)  # in Julia 0.6 I think this should work
    for (i, a) in enumerate(body.args)
      body.args[i] = eval(mod, a)  # eval all subexpressions
    end
  else
    body = eval(mod, body)
  end

  types = Vector(length(args))
  for (i, (a, b)) in enumerate(zip(args_plain, args))
    if isa(a, Expr) && a.head == :(::)  # prefer overwritten types
      types[i] = a.args[2]
      if ASTModels.extract_type_info(b) != :Any
        warn("Overwrote Type Information for " * string(b))
      end
    else
      types[i] = ASTModels.extract_type_info(b)
    end
  end

  args, body, types
end

""" macro to build a function out of AST references """
macro astfunc(e)  # CAUTION: the body always has to be a single expression
  if e.head == :(=)
    f = e.args[1]
    f_name = QuoteNode(f.args[1])  # we need f_name to be a symbol if inserted below, not a function
    args = f.args[2:end]
    body = QuoteNode(ASTModels.ast_minify(e.args[2]))

    expr = quote
      mod = current_module()
      args, body, types = ASTModels._eval_args_body($args, $body, mod)
      ASTModels.astfunc($f_name, args, body, mod, types)
    end

  elseif e.head == :(->)
    if e.args[1].head == :tuple
      args = e.args[1].args
    else
      args = (e.args[1],)  # single symbol -> tuple of single symbol
    end
    body = QuoteNode(ASTModels.ast_minify(e.args[2]))

    expr = quote
      mod = current_module()
      args, body, types = ASTModels._eval_args_body($args, $body, mod)
      ASTModels.astfunc(args, body, mod, types)
    end

  else
    error("Use this macro for simple function syntax only.")
  end

  expr  # we don't want to escape things as all variables are indeed for internal purposes
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






## working with ASTModels --------------------------------------------------------------------------------------



# here we see one drawback of ASTModels: the explicit dependency structure captured normally in order of execution easily is lost here
# we have to reconstruct the dependencies by traversing the AST
# as this is only needed at construction time and not runtime, it is still okay to do so


# this one seems very efficient and short written
function sort_by_dependency(list_of_expr::Vector{Expr})
  l = pointer_from_objref.(list_of_expr)
  deps_in!(list_of_expr, Set(l), Set(l))
end
sort_by_dependency(cont, list_of_expr::Vector{Expr}) = sort_by_dependency(list_of_expr)(cont)

function deps_in!{T<:Any}(cont, es::Vector{T}, pointers!, pointers)
  for e ∈ es
    !isa(e, Expr) && continue

    if pointer_from_objref(e) ∈ pointers!  # go into everything we haven't seen yet
      setdiff!(pointers!, [pointer_from_objref(e)])
      deps_in!(cont, e.args[2:end], pointers!, pointers)  # the first element of e.args is the name of the function or co, i.e. not needed
      cont(e)
    elseif pointer_from_objref(e) ∈ pointers  # don't traverse things again which we already traversed
      continue   # the first element of e.args is the name of the function or co, i.e. not needed
    else
      deps_in!(cont, e.args[2:end], pointers!, pointers)
    end
  end
end
deps_in!{T<:Any}(es::Vector{T}, pointers!, pointers) = cont -> deps_in!(cont, es, pointers!, pointers)


end # module
