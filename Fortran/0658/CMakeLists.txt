set(openmp_tests
  0658_0033
)
llvm_singlesource_compile_only_file(0658_0027.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0658_0028.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0658_0038.f90 APPEND PROPERTY COMPILE_OPTIONS "-fdefault-integer-8")
endif()
