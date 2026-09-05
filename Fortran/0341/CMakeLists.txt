set(openmp_tests
  0341_0450
  0341_0451
  0341_0452
  0341_0453
  0341_0454
)
llvm_singlesource_compile_only_file(0341_0286.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0341_0288.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
