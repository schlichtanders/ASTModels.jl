
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
