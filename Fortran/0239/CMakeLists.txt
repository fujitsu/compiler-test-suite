set(openmp_tests
  0239_0139
  0239_0140
  0239_0141
  0239_0142
  0239_0143
  0239_0155
)
llvm_singlesource_compile_only_file(0239_0129.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
