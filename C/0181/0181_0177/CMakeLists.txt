llvm_multisource(Fujitsu-C-0181_0177)
set_property(TARGET Fujitsu-C-0181_0177 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0177 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
