# ASTModels.jl
a julia alternative to theano

# Rebuild Julia System Image on windows

Pkg.update()
Pkg.add("WinRPM")  # extra
using WinRPM  # extra
WinRPM.install("gcc", yes=true)  # extra
WinRPM.install("winpthreads-devel", yes=true)  # extra
include(joinpath(dirname(JULIA_HOME),"share","julia","build_sysimg.jl"))
build_sysimg(force=true)

see also for Windows / sysimg
https://github.com/JuliaLang/julia/blob/master/README.windows.md
https://docs.julialang.org/en/stable/devdocs/sysimg/
http://www.stochasticlifestyle.com/7-julia-gotchas-handle/

for a fancy julia REPL extension:
https://github.com/tehrengruber/EvalInModuleREPLMode
