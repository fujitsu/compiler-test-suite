file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0237_0039.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0237_0043.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0237_0045.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0237_0025.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0025 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0026.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0026 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0027.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0027 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0079.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0079 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0086.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0086 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0096.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0096 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0097.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0097 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0098.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0098 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0099.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0099 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0100.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0100 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0101.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0101 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0102.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0102 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0103.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0103 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0122.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0122 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0123.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0123 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0126.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0126 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0127.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0127 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0128.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0128 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0129.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0129 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0130.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0130 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0131.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0131 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0132.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0132 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0133.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0133 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0134.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0134 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0135.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0135 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0136.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0136 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0137.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0137 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0138.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0138 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0139.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0139 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0140.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0140 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0141.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0141 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0142.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0142 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0143.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0143 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0237_0144.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0237_0144 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
