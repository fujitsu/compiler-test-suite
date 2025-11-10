llvm_multisource(Fujitsu-C-0181_0108)
set_property(TARGET Fujitsu-C-0181_0108 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto")
set_property(TARGET Fujitsu-C-0181_0108 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
