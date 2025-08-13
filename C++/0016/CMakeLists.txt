llvm_singlesource_fujitsu(PREFIX "Fujitsu-C++-")
set_property(SOURCE 0016_0380.cc APPEND PROPERTY COMPILE_OPTIONS "-O0")
set_property(TARGET Fujitsu-C++-0016_0380 APPEND PROPERTY LINK_OPTIONS "-O0")
