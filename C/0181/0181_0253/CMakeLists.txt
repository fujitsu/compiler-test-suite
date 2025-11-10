llvm_multisource_compile_only(Fujitsu-C-0181_0253)
set_property(TARGET Fujitsu-C-0181_0253 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0253 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
