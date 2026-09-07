set(openmp_tests
  0757_0001
  0757_0002
  0757_0003
  0757_0004
  0757_0011
)
llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
