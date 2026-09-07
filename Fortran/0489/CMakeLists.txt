set(openmp_tests
  0489_0001
  0489_0002
  0489_0003
  0489_0007
  0489_0008
  0489_0017
  0489_0033
  0489_0036
  0489_0046
  0489_0054
  0489_0097
  0489_0123
  0489_0125
)
llvm_singlesource_compile_only_file(0489_0097.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0489_0123.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
