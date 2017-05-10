# module ASTModels
importall Base
importall Docs
using Iterators

# export @expr, sin, f, Model, merge!, merge, g, test, t, t2, expr

## general helper

partial(f, a...; k...) = (b...; l...) -> f(a..., b...; k..., l...)



function replace_exprargs!(expr::Expr, old, new)
  for (i, subexpr) in enumerate(expr.args)
    if subexpr == old
      expr.args[i] = new
    end
  end
end

function replace_subexpr!(expr::Expr, old, new)
  replace_exprargs!(expr, old, new)
  for subexpr in expr.args
    replace_subexpr!(subexpr, old, new)
  end
end

replace_subexpr!(s, old, new) = ()  # there is no way to replace within anything else than expr



function_name(f) = split(string(f), ".")[end]  # sometimes string(func) in fact includes the package too

# function any_method_exists(func::Symbol, types, mod::Module=Base)::Bool
#   subtypes_any = subtypes(Any)
#   for concrete_types in product((t === Any ? subtypes_any : [t] for t in types)...)
#     try
#       if eval(mod, :(method_exists($func, $concrete_types)))
#         return true  # short cycle as soon as possible
#       end
#
#     catch exc
#       if isa(exc, TypeError)
#         # This happens for the Vararg type, hence Varargs are currently regarded as not existent which is defintely worth some improvements
#         continue
#       else
#         rethrow(exc)
#       end
#     end
#   end
#   false
# end

singleton(x::Union{Tuple, Array}) = x
singleton(x) = (x,)

function inv_singleton(x::Union{Tuple, Array})
  length(x) == 1  ?  x[1] : x
end
inv_singleton(x) = x

repeat(a, n::Integer) = [a for _ in 1:n]

function combinations(n, a=:a, b=:b)
  if n==1
    [a ; b]
  else
    previous = combinations(n-1, a, b)
    l = size(previous)[1]
    [[previous repeat(a, l)] ; [previous repeat(b, l)]]
  end
end

combinations(4)

function methods_sig_lengths(func)
  # signature includes function name itself as first element
  Set(length(m.sig.parameters) - 1 for m in methods(func))
end

## expr functionalities

typealias FloatX Float32

# when bringing anything else than Expr into an Expr, we preserve the possibility to cast the respective object
cast = identity


# """
# macro analog to quote, however ground Symbols become trivial Expressions
# this enables to change the content of everything
# """
#
# """
# empty expressions, which could be used everywhere for default
# needs to be created anew always in order to have separate empty defaults
#
# julia> eval(expr())  # will through the following exception:
# ERROR: syntax: unhandled expr ()
#  in eval(::Module, ::Any) at .\boot.jl:234
#  in eval(::Any) at .\boot.jl:233
# """
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

# """
#  creating variables
# """
function _expr_def(e::Symbol)
  # we need Expr(:quote, e) for it to be a true symbol and not a reference
  qe = Expr(:quote, e)
  :($e = expr($qe))
end

macro expr(es::Symbol...)
  esc(Expr(:block, _expr_def.(es)..., nothing))  # hygiene
end


function create_exprs(s::Symbol, combination::Vector{Symbol}, m::Module=Base)
  vars = [Symbol(x, i) for (i, x) in enumerate(combination)]
  types = [startswith(string(x), "e") ? Expr : Any for x in vars]

  if (startswith(string(s), ".")  # either is dot syntax (deprecated I thought, but still occurs, method seems to not exist)
    | eval(m, :(method_exists($s, $types))) # any_method_exists(s, types, m)  # or method already exists in the given package (maybe better to just execute this within this scope? would it be the global scope?)
    | (string(s) != function_name(eval(m, s)))) # or maybe this is a reference to something else, i.e. the symbol is not the same as the string transformation
    return
  end

  vars_typed = [Expr(:(::), x, t) for (x, t) in zip(vars, types)]
  vars_casted = [t === Expr ? x : :(expr($x)) for (x, t) in zip(vars, types)]

  f_head = Expr(:call, s, vars_typed...)
  f_body = Expr(:call, :Expr, :(:call), QuoteNode(s), vars_casted...)
  Expr(:function, f_head, f_body)
end

# TODO make this an continuable and use iterslices instead of mapslices, e.g. using https://github.com/gasagna/ArraySlices.jl
function create_exprs(s::Symbol, i::Integer, m::Module=Base)
  atleast_one_each = combinations(i, :e, :o)[1:end-1,:]
  # atleast_one_each = permutedims(atleast_one_each, (2,1))  # transpose for iteration
  exprs = mapslices(atleast_one_each, 2) do row
    create_exprs(s, row, m)
  end
  [x for x in exprs if x !== nothing]
end

function create_exprs(mod::Module=Base, exclude=[])
  all_expr = []
  exclude = Set(exclude)
  for s in names(mod)
    if s in exclude
      continue
    end
    try
      f = eval(s)
      if isa(f, Function)
        # print(s); print(" ")
        for i in methods_sig_lengths(f)
          sub_expr = create_exprs(s, i, mod)
          append!(all_expr, sub_expr)
        end
      end
    catch
    end
  end
  # Expr(:block, all_expr...)
  all_expr
end

# run for base:
eval.(create_exprs(Base, [:show, :haskey, :push!]))  # we have to exclude ambiguous methods

## test expr creation

@expr a b k
c = sin(a)
d = b*c


## models

typealias VectorAssociative{K,V} Associative{K, Vector{V}}
typealias Model VectorAssociative{String, Expr}
# typealias Model Dict{String, Vector{Expr}}

function merge_concat!{K,V}(d::VectorAssociative{K,V}, others::VectorAssociative{K,V}...)
    for other in others
        for (k,v) in other
          if k in keys(d)
            d[k] = [d[k]; other[k]]
          else
            d[k] = other[k]
          end
        end
    end
    d
end

function merge_concat{K,V}(d::VectorAssociative{K,V}, others::VectorAssociative{K,V}...)
  merge_concat!(Dict{K,Vector{V}}(), d, others...)
end

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


## test dictionary models

di = Dict("inputs"=>[a,b,k], "outputs"=>[c, k])
merge_models(di)

di1 = Dict("inputs"=>[a], "outputs"=>[c])
di2 = Dict("inputs"=>[c, b], "outputs"=>[d])
merge_models(di1, di2)

# TODO bring merge_models to Struct with internal dictionary


## building function out of astmodels

function substitute!(ori::Expr, sub::Expr)
  old = Expr(ori.head, ori.args...)
  ori.head = sub.head
  ori.args = sub.args
  # ori.typ = sub.typ  # typ is not supported and might be deleted in future julia versions
  old
end


""" named version """
function astfunc(func_name, args, body)
  # we need to have Expressions
  new_symbols = [:($(Symbol(n))::Any) for n in take('a':'z', length(args))]
  old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
  f_def = Expr(:call, func_name, new_symbols...)
  eval(Expr(:(=), f_def, body))  # evaluate function
  new_symbols = substitute!.(args, old_symbols)
  eval(Symbol(func_name))
end

""" anonymous version """
function astfunc(args, body)
  # we need to have Expressions
  new_symbols = [:($(Symbol(n))::Any) for n in take('a':'z', length(args))]
  old_symbols = substitute!.(args, new_symbols)  # Dict(zip(args, symbols))  ??
  f_def = Expr(:tuple, new_symbols...)
  f = eval(Expr(:(->), f_def, body))  # evaluate function
  new_symbols = substitute!.(args, old_symbols)
  f
end

macro astfunc(e)
  if e.head == :(=)
    f = e.args[1]
    body = e.args[2]
    f_name = QuoteNode(f.args[1])  # we need f_name to be a symbol if inserted below, not a function
    args = f.args[2:end]

    quote
      args = eval.($args)  # seamingly macros don't work well with overwriting
      body = eval($body)
      astfunc($f_name, args, body)
    end

  elseif e.head == :(->)
    body = e.args[2]
    if e.args[1].head == :tuple
      args = e.args[1].args
    else
      args = (e.args[1],)  # single symbol -> tuple of single symbol
    end

    quote
      args = eval.($args)  # seamingly macros don't work well with overwriting
      body = eval($body)
      astfunc(args, body)
    end

  else
    error("Use this macro for simple function syntax only.")
  end
end



astfunc(:g, [a,b], d)
# macroexpand(:(@ast_func h(a,b) = d))
@astfunc h(a,b) = d

anonym = astfunc([a,b], d)
anonym2 = @astfunc (a,b) -> d

function clone(inputs, outputs; new_inputs=[])
  f = astfunc(inputs, outputs)
  if length(new_inputs) == 0
    new_inputs = inputs  # use old inputs
  end
  f(new_inputs)
end

copy = clone


## TODO test astfunc and clone !!!
