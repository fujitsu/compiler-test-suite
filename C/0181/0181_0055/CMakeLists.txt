llvm_multisource(Fujitsu-C-0181_0055)
set_property(TARGET Fujitsu-C-0181_0055 APPEND PROPERTY COMPILE_DEFINITIONS "NO_ARG_S1")
set_property(TARGET Fujitsu-C-0181_0055 APPEND PROPERTY COMPILE_OPTIONS "-O;-flto")
set_property(TARGET Fujitsu-C-0181_0055 APPEND PROPERTY LINK_OPTIONS "-O;-flto;-fuse-ld=lld")
