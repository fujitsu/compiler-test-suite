llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0427_0016.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0427_0016 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0427_0017.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0427_0017 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0427_0051.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0427_0051 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0427_0097.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0427_0097 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
