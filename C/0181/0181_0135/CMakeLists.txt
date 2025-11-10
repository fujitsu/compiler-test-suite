llvm_multisource(Fujitsu-C-0181_0135)
set_property(TARGET Fujitsu-C-0181_0135 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0135 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
