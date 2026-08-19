set(openmp_tests
  0134_0041
  0134_0142
  0134_0143
  0134_0144
  0134_0146
  0134_0147
  0134_0148
  0134_0152
  0134_0153
  0134_0154
  0134_0155
  0134_0156
  0134_0157
  0134_0158
  0134_0159
  0134_0160
  0134_0161
  0134_0162
  0134_0163
  0134_0168
  0134_0236
  0134_0321
  0134_0328
)
llvm_singlesource_compile_only_file(0134_0242.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
