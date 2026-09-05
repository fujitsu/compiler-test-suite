set(openmp_tests
  0520_0007
  0520_0008
  0520_0009
  0520_0011
)
llvm_singlesource_compile_only_file(0520_0007.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
