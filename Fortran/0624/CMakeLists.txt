set(openmp_tests
  0624_0025
)
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0624_0018.f90 APPEND PROPERTY COMPILE_OPTIONS "-ffixed-form")
  set_property(SOURCE 0624_0042.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-approx-func")
endif()
