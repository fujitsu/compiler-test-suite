llvm_multisource(Fujitsu-C-0181_0011)
set_property(TARGET Fujitsu-C-0181_0011 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto")
set_property(TARGET Fujitsu-C-0181_0011 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
