llvm_multisource(Fujitsu-C-0181_0099)
set_property(TARGET Fujitsu-C-0181_0099 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto;-fopenmp")
set_property(TARGET Fujitsu-C-0181_0099 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld;-fopenmp")
set_property(TARGET Fujitsu-C-0181_0099 APPEND PROPERTY LINK_LIBRARIES "m")
