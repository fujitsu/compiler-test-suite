file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0662_0010.F APPEND PROPERTY COMPILE_OPTIONS "-ffree-form")
