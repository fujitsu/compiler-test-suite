llvm_multisource(Fujitsu-C-0181_0152)
set_property(TARGET Fujitsu-C-0181_0152 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0152 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
