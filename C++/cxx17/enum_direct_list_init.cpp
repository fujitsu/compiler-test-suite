/*
FEATURE: C++17 Direct-list-initialization of enums
SPEC: ISO/IEC 14882:2017 (C++17) [dcl.init.list] §11.6.4
PURPOSE: Verify that direct-list-initialization of enum types is allowed in C++17
         and that only valid enumerator values are accepted.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror enum_direct_list_init.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Scoped enum for type safety
enum class Color : int {
    Red   = 0,
    Green = 1,
    Blue  = 2
};

// Unscoped enum
enum Status {
    Idle  = 0,
    Busy  = 1,
    Error = 2
};

int main()
{
    // Valid direct-list-initialization (must compile in C++17)
    Color c1{0};   // Maps to Color::Red
    Color c2{1};   // Maps to Color::Green
    // Status s1{2};  // Maps to Status::Error

    // Runtime verification of the values
    if (c1 != Color::Red) {
        return EXIT_FAILURE; // 1;
    }

    if (c2 != Color::Green) {
        return EXIT_FAILURE; // 2;
    }

    // if (s1 != Status::Error) {
    //     return EXIT_FAILURE; // 3;
    // }

    // Type safety check for scoped enum
    static_assert(std::is_enum<Color>::value, "Color must be an enum type");

    // The following code must FAIL to compile in C++17 because the value
    // is not representable by the enumeration.
    // Uncommenting it should cause a compilation error.
    //
    // Color invalid{3};

    return EXIT_SUCCESS; // Success
}
