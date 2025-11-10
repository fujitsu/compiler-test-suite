llvm_multisource(Fujitsu-C-0181_0109)
set_property(TARGET Fujitsu-C-0181_0109 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto;-std=gnu99;-Wno-incompatible-pointer-types")
set_property(TARGET Fujitsu-C-0181_0109 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
