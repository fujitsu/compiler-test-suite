llvm_multisource_compile_only(Fujitsu-C++-0048_0175)
set_property(TARGET Fujitsu-C++-0048_0175 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C++-0048_0175 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
