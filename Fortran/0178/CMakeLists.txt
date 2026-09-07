set(openmp_tests
  0178_0017
  0178_0018
)
llvm_singlesource_compile_only_file(0178_0000.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
