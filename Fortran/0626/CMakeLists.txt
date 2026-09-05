set(openmp_tests
  0626_0044
)
llvm_singlesource_compile_only_file(0626_0037.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0626_0038.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
