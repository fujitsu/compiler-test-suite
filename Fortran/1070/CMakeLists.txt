set(openmp_tests
  1070_0717
)
llvm_singlesource_compile_only_file(1070_0717.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
