llvm_multisource(Fujitsu-C-0181_0179)
set_property(TARGET Fujitsu-C-0181_0179 APPEND PROPERTY COMPILE_OPTIONS "-flto")
set_property(TARGET Fujitsu-C-0181_0179 APPEND PROPERTY LINK_OPTIONS "-flto;-fuse-ld=lld")
