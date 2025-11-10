llvm_multisource(Fujitsu-C-0181_0112)
set_property(TARGET Fujitsu-C-0181_0112 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto")
set_property(TARGET Fujitsu-C-0181_0112 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
set_property(TARGET Fujitsu-C-0181_0112 APPEND PROPERTY LINK_LIBRARIES "m")
