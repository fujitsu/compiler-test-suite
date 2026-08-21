set(openmp_tests
  0306_0035
)
llvm_singlesource_compile_only_file(0306_0008.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0306_0010.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0306_0026.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0306_0032.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0306_0033.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
