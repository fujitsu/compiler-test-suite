set(openmp_tests
  0378_0005
  0378_0006
  0378_0008
  0378_0009
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0378_0026.F APPEND PROPERTY COMPILE_OPTIONS "-ffixed-line-length=255;-ffixed-line-length=255")
endif()
