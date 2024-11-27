llvm_singlesource_compile_only_directory(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 1014_0015.f APPEND PROPERTY COMPILE_OPTIONS "-ffixed-line-length=255")
