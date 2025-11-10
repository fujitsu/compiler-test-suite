llvm_multisource(Fujitsu-C-0181_0170)
set_property(TARGET Fujitsu-C-0181_0170 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0170 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
