using ASTModels
using Continuables
@expr a b c

d = a + b
e = c*d

# TODO build continuation macro @cont to automatically create the other method version, both for function(cont, ...) for f(cont, ) = as well as for cont not being the first one
