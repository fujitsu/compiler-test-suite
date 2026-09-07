set(openmp_tests
  0303_0017
  0303_0022
  0303_0023
  0303_0029
  0303_0037
  0303_0056
  0303_0073
  0303_0100
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0303_0098.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-fast-math")
  set_property(TARGET Fujitsu-Fortran-0303_0098 APPEND PROPERTY LINK_OPTIONS "-fno-fast-math")
endif()
