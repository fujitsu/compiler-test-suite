llvm_multisource(Fujitsu-C-0181_0101)
set_property(TARGET Fujitsu-C-0181_0101 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto;-std=gnu99")
set_property(TARGET Fujitsu-C-0181_0101 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
set_property(TARGET Fujitsu-C-0181_0101 APPEND PROPERTY LINK_LIBRARIES "m")
