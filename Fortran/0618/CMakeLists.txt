set(openmp_tests
  0618_0000
  0618_0001
  0618_0002
  0618_0014
  0618_0015
  0618_0016
)
llvm_singlesource_compile_only_file(0618_0014.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0618_0015.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0618_0016.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
