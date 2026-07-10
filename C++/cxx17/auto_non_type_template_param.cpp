/*
FEATURE: Non-type template parameters with auto type
SPEC: ISO/IEC 14882:2017 (C++17) [temp.param] (see also P0127R2)
PURPOSE: Verify that non-type template parameters can use 'auto' so that
         the parameter type is deduced from the provided constant expression.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror auto_non_type_template_param.cpp
*/

#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A template with a non-type template parameter using auto.
template <auto Value>
struct Holder {
    static constexpr auto value = Value;
};

int main()
{
    // Integer constant: type should be deduced as int.
    Holder<42> h_int;
    static_assert(std::is_same<decltype(h_int.value), const int>::value,
                  "Type of Value should be int");

    // Size-related constant: type should be deduced as std::size_t.
    Holder<sizeof(int)> h_size;
    static_assert(std::is_same<decltype(h_size.value), const std::size_t>::value,
                  "Type of Value should be std::size_t");

    // Pointer constant: type should be deduced as a pointer type.
    static int global = 0;
    Holder<&global> h_ptr;
    static_assert(std::is_same<decltype(h_ptr.value), int *const>::value,
                  "Type of Value should be int* const");

    // Runtime check to ensure the values are usable.
    if (h_int.value != 42) {
        return EXIT_FAILURE;
    }
    if (h_size.value != sizeof(int)) {
        return EXIT_FAILURE;
    }
    if (h_ptr.value != &global) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
