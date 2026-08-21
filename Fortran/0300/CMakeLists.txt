set(openmp_tests
  0300_0009
  0300_0111
  0300_0130
)
llvm_singlesource_compile_only_file(0300_0043.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0300_0070.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0300_0111.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
