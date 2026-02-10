llvm_singlesource_compile_only_file(0434_0005.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_fujitsu(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0434_0002.f90 APPEND PROPERTY COMPILE_OPTIONS "-fno-stack-arrays")
