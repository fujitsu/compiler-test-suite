llvm_multisource_compile_only(Fujitsu-C++-0048_0131)
set_property(TARGET Fujitsu-C++-0048_0131 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C++-0048_0131 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
