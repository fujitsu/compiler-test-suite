set(openmp_tests
  1064_0015
  1064_0016
  1064_0017
  1064_0071
  1064_0075
  1064_0076
  1064_0077
  1064_0078
  1064_0079
  1064_0085
  1064_0088
  1064_0089
  1064_0096
  1064_0142
  1064_0143
  1064_0144
  1064_0145
  1064_0146
  1064_0147
  1064_0148
  1064_0149
  1064_0150
  1064_0151
  1064_0157
  1064_0158
  1064_0159
  1064_0184
  1064_0224
  1064_0240
  1064_0241
  1064_0242
  1064_0271
  1064_0272
  1064_0288
  1064_0289
  1064_0328
  1064_0329
  1064_0330
  1064_0331
  1064_0332
  1064_0333
  1064_0334
  1064_0344
  1064_0345
  1064_0381
  1064_0436
  1064_0444
  1064_0447
  1064_0448
  1064_0449
  1064_0451
  1064_0456
  1064_0458
  1064_0464
  1064_0466
  1064_0467
  1064_0470
)
file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(1064_0123.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(1064_0327.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(1064_0374.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(1064_0376.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(1064_0452.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(1064_0458.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
