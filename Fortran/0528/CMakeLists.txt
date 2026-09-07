set(openmp_tests
  0528_0106
)
llvm_singlesource_compile_only_file(0528_0088.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
