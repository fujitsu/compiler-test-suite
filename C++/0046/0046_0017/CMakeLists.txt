llvm_multisource(Fujitsu-C++-0046_0017)
set_property(TARGET Fujitsu-C++-0046_0017 APPEND PROPERTY INCLUDE_DIRECTORIES "${CMAKE_CURRENT_SOURCE_DIR}/../include")
set_property(TARGET Fujitsu-C++-0046_0017 APPEND PROPERTY COMPILE_OPTIONS "-std=c++17;-stdlib=libstdc++")
set_property(TARGET Fujitsu-C++-0046_0017 APPEND PROPERTY LINK_OPTIONS "-stdlib=libstdc++")
