set(openmp_tests
  0156_0010
  0156_0011
  0156_0012
  0156_0013
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0156_0005.f90 APPEND PROPERTY COMPILE_OPTIONS "-ffixed-form")
endif()
