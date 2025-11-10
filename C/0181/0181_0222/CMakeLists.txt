llvm_multisource_compile_only(Fujitsu-C-0181_0222)
set_property(TARGET Fujitsu-C-0181_0222 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0222 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
