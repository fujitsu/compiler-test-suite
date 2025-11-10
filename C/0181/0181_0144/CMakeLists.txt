llvm_multisource(Fujitsu-C-0181_0144)
set_property(TARGET Fujitsu-C-0181_0144 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0144 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
