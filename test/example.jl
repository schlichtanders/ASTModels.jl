# Variational Autoencoder
using ASTModels

type LinearLayer <: TypeWithModel
  W
  b
  dict::Model
  function LinearLayer()
    @expr x W::Matrix b::Vector
    new(W, b, Dict("inputs"=>[x], "params" => [W,b], "outputs" => [W*x + b]))
  end
end

function (m1::Model)(m2::Model)
  m1 = convert(Model, m1)
  m2 = convert(Model, m2)
  substitute!(m1["inputs"], m2["outputs"])
  merge_models(m1, m2)
end

function stack(ms::Vector{Union{Model,TypeWithModel}})
  ms = [convert(Model, m) for m in ms]
  m2 = convert(Model, m2)
  substitute!(m1["inputs"], m2["outputs"])
  merge_models(m1, m2)
end

ll1 > ll2 > ll3

type MultiLayer <: TypeWithModel
  layers
  dict::Model

end

@expr a b c

# TODO think about a straightforward way to build up complex models
# usually one would use functions, however functions loose there parameters... while this one keeps track of parameters per Model level
merge(LinearLayer(a)
