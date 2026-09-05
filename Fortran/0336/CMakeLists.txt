set(openmp_tests
  0336_0031
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0336_0175.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0176.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0177.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0178.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0179.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0180.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
  set_property(SOURCE 0336_0181.f90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
endif()
