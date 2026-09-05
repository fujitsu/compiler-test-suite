set(openmp_tests
  0616_0000
  0616_0001
  0616_0002
  0616_0008
  0616_0009
  0616_0010
  0616_0011
  0616_0016
  0616_0017
  0616_0018
  0616_0019
  0616_0061
  0616_0062
  0616_0063
  0616_0064
)
llvm_singlesource_compile_only_file(0616_0016.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
