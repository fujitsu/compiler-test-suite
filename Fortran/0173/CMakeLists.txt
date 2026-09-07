set(openmp_tests
  0173_0100
  0173_0127
  0173_0143
  0173_0144
  0173_0152
  0173_0153
  0173_0154
  0173_0155
  0173_0156
  0173_0157
  0173_0158
)
llvm_singlesource_compile_only_file(0173_0096.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0173_0097.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0173_0098.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
