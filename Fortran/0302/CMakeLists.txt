llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0302_0031.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0302_0031 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0302_0032.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0302_0032 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0302_0033.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0302_0033 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
