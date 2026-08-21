set(openmp_tests
  0548_0073
  0548_0074
  0548_0075
  0548_0076
  0548_0077
  0548_0078
  0548_0079
  0548_0080
  0548_0081
  0548_0082
  0548_0083
  0548_0084
  0548_0085
  0548_0086
  0548_0087
  0548_0088
  0548_0089
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0548_0027.f03 APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
  set_property(TARGET Fujitsu-Fortran-0548_0027 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
  set_property(SOURCE 0548_0029.f03 APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
  set_property(TARGET Fujitsu-Fortran-0548_0029 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
endif()
