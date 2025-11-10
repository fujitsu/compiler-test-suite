llvm_multisource(Fujitsu-C-0181_0153)
set_property(TARGET Fujitsu-C-0181_0153 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0153 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
