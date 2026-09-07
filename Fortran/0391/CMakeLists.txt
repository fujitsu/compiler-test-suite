set(openmp_tests
  0391_0000
  0391_0005
  0391_0023
  0391_0025
  0391_0026
  0391_0027
  0391_0028
  0391_0029
  0391_0030
  0391_0031
  0391_0032
  0391_0033
  0391_0034
  0391_0035
  0391_0036
  0391_0040
  0391_0042
  0391_0043
  0391_0058
)
llvm_singlesource_compile_only_file(0391_0009.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
