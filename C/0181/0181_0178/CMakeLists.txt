llvm_multisource(Fujitsu-C-0181_0178)
set_property(TARGET Fujitsu-C-0181_0178 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0178 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
