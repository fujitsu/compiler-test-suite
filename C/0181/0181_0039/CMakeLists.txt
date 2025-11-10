llvm_multisource(Fujitsu-C-0181_0039)
set_property(TARGET Fujitsu-C-0181_0039 APPEND PROPERTY COMPILE_DEFINITIONS "ARG_S1")
set_property(TARGET Fujitsu-C-0181_0039 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto")
set_property(TARGET Fujitsu-C-0181_0039 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
