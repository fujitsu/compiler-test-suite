set(openmp_tests
  0487_0027
  0487_0047
  0487_0078
  0487_0088
  0487_0089
  0487_0090
  0487_0091
  0487_0092
  0487_0093
  0487_0094
  0487_0095
  0487_0096
  0487_0097
  0487_0137
  0487_0138
  0487_0139
  0487_0141
  0487_0142
  0487_0146
  0487_0149
  0487_0150
  0487_0163
  0487_0208
  0487_0228
  0487_0229
  0487_0235
  0487_0250
  0487_0256
  0487_0260
  0487_0265
  0487_0267
  0487_0268
  0487_0288
  0487_0289
  0487_0291
  0487_0300
  0487_0309
  0487_0310
  0487_0311
  0487_0313
  0487_0316
  0487_0317
  0487_0368
  0487_0373
  0487_0376
  0487_0417
  0487_0418
  0487_0427
)
file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0487_0144.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0487_0173.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0487_0311.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0487_0313.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0487_0377.f90 APPEND PROPERTY COMPILE_OPTIONS "-ffixed-form")
endif()
