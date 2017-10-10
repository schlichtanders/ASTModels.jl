## test expr creation
using ASTModels

@expr a b k
c = 2a
d = b*c

## test dictionary models

di = Dict("inputs"=>[a,b,k], "outputs"=>[c, k])
merge_models(di)

di1 = Dict("inputs"=>[a], "outputs"=>[c])
di2 = Dict("inputs"=>[c, b], "outputs"=>[d])
dm = merge_models(di1, di2)

# clone still does not make sense, as parameters are not cloned - We would have to generate new parameters....
# TODO only true inputs would have to be preserved ..
dc = clone(dm)
dc["inputs"] === dm["inputs"]
dc["outputs"] === dm["outputs"]
dc["outputs"] == dm["outputs"]

ti1 = TestTypeWithModel(di1)
ti2 = TestTypeWithModel(di2)
merge_models(ti1, ti2)



## test function compilation


# macroexpand(:(@ast_func h(a,b) = d))
@astfunc h(a,b) = d

anonym = astfunc([a,b], d)
anonym2 = @astfunc (a,b) -> d


d2 = clone([a,b], d)

## TODO test astfunc and clone !!!
