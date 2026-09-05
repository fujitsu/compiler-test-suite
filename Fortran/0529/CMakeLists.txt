set(openmp_tests
  0529_0017
)
llvm_singlesource_compile_only_file(0529_0008.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0529_0013.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
