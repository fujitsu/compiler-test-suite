file(COPY lit.local.cfg DESTINATION "${CMAKE_CURRENT_BINARY_DIR}")
llvm_singlesource_compile_only_file(0153_0001.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0002.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0011.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0174.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0223.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0260.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0261.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0281.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0283.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0284.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource_compile_only_file(0153_0285.f90 PREFIX "Fujitsu-Fortran-")
llvm_singlesource(PREFIX "Fujitsu-Fortran-")
llvm_set_own_fortran_module_directory()
set_property(SOURCE 0153_0001.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0001 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0002.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0002 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0012.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0012 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0071.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0071 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0072.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0072 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0077.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0077 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0084.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0084 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0085.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0085 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0086.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0086 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0087.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0087 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0088.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0088 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0089.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0089 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0096.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0096 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0097.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0097 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0098.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0098 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0099.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0099 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0100.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0100 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0101.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0101 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0102.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0102 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0103.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0103 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0104.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0104 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0105.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0105 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0106.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0106 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0107.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0107 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0108.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0108 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0110.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0110 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0111.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0111 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0112.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0112 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0113.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0113 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0114.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0114 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0115.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0115 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0116.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0116 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0117.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0117 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0118.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0118 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0119.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0119 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0120.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0120 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0121.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0121 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0122.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0122 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0123.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0123 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0124.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0124 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0125.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0125 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0126.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0126 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0127.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0127 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0128.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0128 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0130.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0130 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0131.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0131 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0134.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0134 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0135.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0135 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0137.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0137 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0156.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0156 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0157.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0157 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0158.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0158 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0164.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0164 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0169.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0169 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0170.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0170 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0175.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0175 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0176.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0176 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0181.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0181 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0189.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0189 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0190.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0190 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0191.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0191 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0192.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0192 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0193.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0193 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0194.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0194 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0195.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0195 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0196.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0196 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0197.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0197 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0198.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0198 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0199.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0199 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0200.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0200 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0201.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0201 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0202.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0202 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0203.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0203 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0233.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0233 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0234.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0234 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0235.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0235 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0236.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0236 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0237.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0237 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0240.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0240 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0241.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0241 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0255.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0255 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0263.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0263 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0264.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0264 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0265.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0265 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0283.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0283 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0284.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0284 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0285.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0285 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0287.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0287 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0288.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0288 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0289.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0289 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
set_property(SOURCE 0153_0290.f90 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp")
set_property(TARGET Fujitsu-Fortran-0153_0290 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
