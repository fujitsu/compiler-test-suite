set(openmp_tests
  0619_0093
  0619_0107
  0619_0108
  0619_0112
  0619_0125
  0619_0170
  0619_0174
  0619_0316
  0619_0321
)
file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
if(TEST_SUITE_FUJITSU_ENABLE_${llvm_test_lang}_NON_OPENMP)
  set_property(SOURCE 0619_0274.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0274 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0277.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0277 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0278.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0278 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0279.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0279 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0280.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0280 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0281.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0281 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0282.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0282 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0283.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0283 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0284.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0284 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
  set_property(SOURCE 0619_0287.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-lto")
  set_property(TARGET Fujitsu-Fortran-0619_0287 APPEND PROPERTY LINK_OPTIONS "-fno-lto")
endif()
