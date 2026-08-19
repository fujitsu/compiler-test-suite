set(openmp_tests
  0299_0004
  0299_0006
  0299_0037
  0299_0038
  0299_0039
  0299_0040
  0299_0053
  0299_0054
)
llvm_singlesource_compile_only_file(0299_0054.f PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
