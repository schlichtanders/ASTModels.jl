
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



function mycombinations(n, a=:a, b=:b)
  if n==1
    [a ; b]
  else
    previous = mycombinations(n-1, a, b)
    l = size(previous)[1]
    [[previous repeat(a, l)] ; [previous repeat(b, l)]]
  end
end


function methods_sig_lengths(func)
  # signature includes function name itself as first element
  Set(length(m.sig.parameters) - 1 for m in methods(func))
end


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
