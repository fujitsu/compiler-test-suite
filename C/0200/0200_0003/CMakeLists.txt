llvm_multisource(Fujitsu-C-0200_0003)
set_property(TARGET Fujitsu-C-0200_0003 APPEND PROPERTY COMPILE_OPTIONS "-fopenmp;-mcmodel=small;-fPIC")
set_property(TARGET Fujitsu-C-0200_0003 APPEND PROPERTY LINK_OPTIONS "-fopenmp")
