file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0452_0000.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0001.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0002.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0003.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0004.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0008.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0009.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0022.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0026.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0027.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0452_0031.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
