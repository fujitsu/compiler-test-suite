set(openmp_tests
  0305_0006
  0305_0008
  0305_0012
  0305_0025
)
llvm_singlesource_compile_only_file(0305_0029.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0305_0042.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0305_0044.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
