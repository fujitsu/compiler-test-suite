set(openmp_tests
  1001_0001
  1001_0002
  1001_0003
  1001_0004
  1001_0005
  1001_0006
  1001_0007
  1001_0008
  1001_0009
)
llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
