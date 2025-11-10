llvm_multisource(Fujitsu-C++-0046_0024)
set_property(TARGET Fujitsu-C++-0046_0024 APPEND PROPERTY INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/../include")
set_property(TARGET Fujitsu-C++-0046_0024 APPEND PROPERTY COMPILE_OPTIONS "-std=c++17;-stdlib=libc++")
set_property(TARGET Fujitsu-C++-0046_0024 APPEND PROPERTY LINK_OPTIONS "-stdlib=libc++")
