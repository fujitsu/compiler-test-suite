file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0539_0003.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0004.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0005.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0012.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0052.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0053.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0057.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0058.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0059.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0060.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0539_0061.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0539_0000.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0000 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0001.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0001 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0002.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0002 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0003.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0003 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0004.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0004 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0005.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0005 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0006.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0006 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0007.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0007 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0008.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0008 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0009.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0009 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0010.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0010 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0011.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0011 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0012.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0012 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0013.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0013 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0014.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0014 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0015.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0015 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0016.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0016 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0017.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0017 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0018.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0018 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0019.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0019 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0020.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0020 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0021.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0021 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0022.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0022 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0023.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0023 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0024.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0024 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0025.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0025 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0026.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0026 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0027.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0027 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0028.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0028 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0029.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0029 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0030.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0030 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0031.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0031 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0032.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0032 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0033.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0033 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0034.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0034 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0035.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0035 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0036.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0036 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0037.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0037 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0038.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0038 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0039.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0039 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0040.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0040 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0041.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0041 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0042.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0042 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0043.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0043 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0044.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0044 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0045.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0045 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0046.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0046 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0047.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0047 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0048.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0048 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0049.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0049 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0050.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0050 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0051.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0051 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0052.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0052 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0053.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0053 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0054.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0054 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0055.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0055 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0056.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0056 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0057.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0057 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0058.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0058 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0059.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0059 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0060.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0060 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0539_0061.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0539_0061 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
