file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0670_0005.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0015.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0016.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0018.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0026.F PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0029.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0040.F PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0041.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0046.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0050.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0076.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0670_0077.F90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0670_0022.F APPEND PROPERTY COMPILE_OPTIONS "-ffixed-line-length=255")
set_property(SOURCE 0670_0049.F90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
set_property(SOURCE 0670_0070.F90 APPEND PROPERTY COMPILE_OPTIONS "-fbackslash")
