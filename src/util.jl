using Iterators

# we need to fix Base.show_call so that functions get printed such that they can be executed
# (concretly &, $, - and maybe still others have to be wrapped in parantheses)
import Base: expr_calls, show_call, show_unquoted, show_list, show_enclosed_list
function show_call(io::IO, head, func, func_args, indent)
    op, cl = expr_calls[head]
    if (isa(func, Symbol) && func ∉ [:&, :$, :-]) || (isa(func, Expr) &&
            (func.head == :. || func.head == :curly))
        show_unquoted(io, func, indent)
    else
        print(io, '(')
        show_unquoted(io, func, indent)
        print(io, ')')
    end
    if head == :(.)
        print(io, '.')
    end
    if !isempty(func_args) && isa(func_args[1], Expr) && func_args[1].head === :parameters
        print(io, op)
        show_list(io, func_args[2:end], ',', indent)
        print(io, "; ")
        show_list(io, func_args[1].args, ',', indent)
        print(io, cl)
    else
        show_enclosed_list(io, op, func_args, ",", cl, indent)
    end
end



partial(f, a...; k...) = (b...; l...) -> f(a..., b...; k..., l...)


function_name(f) = split(string(f), ".")[end]  # sometimes string(func) in fact includes the package too

singleton(x::Union{Tuple, Array}) = x
singleton(x) = (x,)

function inv_singleton(x::Union{Tuple, Array})
  length(x) == 1  ?  x[1] : x
end
inv_singleton(x) = x


import Base.repeat
repeat(a, n::Integer) = [a for _ in 1:n]



# function mycombinations(n, a=:a, b=:b)
#   if n==1
#     [a ; b]
#   else
#     previous = mycombinations(n-1, a, b)
#     l = size(previous)[1]
#     [[previous repeat(a, l)] ; [previous repeat(b, l)]]
#   end
# end


# function methods_sig_lengths(func)
#   # signature includes function name itself as first element
#   Set(length(m.sig.parameters) - 1 for m in methods(func))
# end

traverse_noconflict_methods_sig(func::Function, argtype::DataType=Expr) = cont -> begin
  # signature includes function name itself as first element
  length_to_issubtypeidx = Dict{Int,Set{Int}}()
  for m in methods(func)
    args_types = m.sig.parameters[2:end]  # first position is function name
    l = length(args_types)
    if l ∉ keys(length_to_issubtypeidx)
      length_to_issubtypeidx[l] = Set()
    end

    for (i, a) in enumerate(args_types)
      if issubtype(argtype, a)
        push!(length_to_issubtypeidx[l], i)
      end
    end
  end

  for (l, idx_issubttype) in length_to_issubtypeidx
    # we have to take care of method ambiguity. This arises if we define a new method where one parameter issubtype_expr and another isparenttype
    # hence 1) if we have no idx_issubttype, there is nothing to fear (case where we set all idx_issubtype to Any instead of Expr)
    # but 2) when we have idx_issubtype, we must ensure that we have no isparenttype for all other positions idx!_issubtype
    # (i.e. in the case where we set at least one of the issubttypes to ``argtype`` we have to set all idx!_issubtype to ``argtype``)
    idx! = setdiff(1:l, idx_issubttype)
    idx = [idx_issubttype...]  # set to Array
    newsig = Vector{DataType}(l)

    # 1)
    fill!(newsig, Any)
    for subs in subsets(idx!)
      if length(subs) == 0
        continue  # this would result in a signature of all being Any, which is not useful
      end
      newsig[subs] = Expr
      cont(tuple(newsig...))  # do tuple copy for savety reasons
      newsig[subs] = Any  # revert
    end

    # 2)
    newsig[idx!] = Expr
    # newsig[issubtype_expr] = Any  # everything else should still be Any
    for subs in subsets(idx)
      if length(subs) == 0
        continue  # this would result in the signature where newsig[!issubtype_expr]=Expr and newsig[issubtype_expr]=Any, which we already had as the last case of 1)
      end
      newsig[subs] = Expr
      cont(tuple(newsig...))  # do tuple copy for savety reasons
      newsig[subs] = Any  # revert
    end
  end
end

traverse_noconflict_methods_sig(cont, func::Function, argtype::DataType=Expr) = traverse_noconflict_methods_sig(func, argtype)(cont)


typealias VectorAssociative{K,V} Associative{K, Vector{V}}

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


""" use as
```
suppress(Union{Exc1, Exc2}) do
  foo(1,2,3)
end
```
"""
function suppress(callable, exctype::Type=Exception)
  try
    callable()
  catch exc
    if !isa(exc, exctype)
      rethrow()
    end
  end
end
