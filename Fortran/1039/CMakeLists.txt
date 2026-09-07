set(openmp_tests
  1039_0040
  1039_0041
  1039_0042
  1039_0043
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 1039_0180.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-stack-arrays")
endif()
