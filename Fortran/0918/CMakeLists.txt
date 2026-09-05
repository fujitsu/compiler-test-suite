set(openmp_tests
  0918_0002
  0918_0003
  0918_0004
  0918_0005
  0918_0006
)
llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
