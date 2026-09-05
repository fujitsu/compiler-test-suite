set(openmp_tests
  0367_0000
)
llvm_singlesource_compile_only_file(0367_0000.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0367_0001.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
