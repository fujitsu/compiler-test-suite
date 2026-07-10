/*
FEATURE: C++17 constexpr if-statements
SPEC: ISO/IEC 14882:2017 (C++17) §8.5.2 [stmt.if]
PURPOSE: Verify that if constexpr evaluates conditions at compile time and discards
         non-selected branches so that ill-formed code in discarded branches does
         not cause compilation errors.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror constexpr_if.cpp
*/

#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// This template uses if constexpr to select code paths depending on the type.
// The discarded branch intentionally contains code that would be ill-formed
// if it were instantiated.
template <typename T>
constexpr std::size_t type_dependent_size()
{
    if constexpr (std::is_integral<T>::value) {
        // Valid branch for integral types
        return sizeof(T);
    } else {
        // This code would be ill-formed if instantiated, because T does not
        // have a member named non_existent_member.
        // It must not be compiled when the condition is false.
        return T::non_existent_member;
    }
}

int main()
{
    // For int, the integral branch must be selected at compile time.
    constexpr std::size_t s = type_dependent_size<int>();

    // Basic runtime check to confirm expected behavior.
    if (s != sizeof(int)) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

