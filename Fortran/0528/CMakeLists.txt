file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0528_0083.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0528_0084.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0528_0085.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0528_0086.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0528_0088.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0528_0106.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0528_0106 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
