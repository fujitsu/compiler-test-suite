file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0141_0001.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0002.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0023.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0025.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0027.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0029.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0039.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0040.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0141_0064.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0141_0019.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0019 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0020.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0020 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0021.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0021 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0022.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0022 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0023.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0023 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0024.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0024 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0025.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0025 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0026.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0026 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0027.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0027 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0028.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0028 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0029.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0029 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0039.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0039 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0040.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0040 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0041.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0041 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0042.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0042 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0043.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0043 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0044.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0044 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0064.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0064 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0065.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0065 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0113.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0113 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0114.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0114 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0115.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0115 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0116.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0116 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0122.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0122 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0123.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0123 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0125.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0125 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0126.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0126 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0141_0127.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0141_0127 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
