/*
FEATURE: Removing deprecated dynamic exception specifications
SPEC: ISO/IEC 14882:2017 (C++17) §15.4 Exception specifications [except.spec]
PURPOSE: Verify that dynamic exception specifications are no longer supported
         in C++17 and that noexcept is the only remaining exception specification.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror removed_dynamic_exception_spec.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// In C++11 and C++14, the following declaration was allowed but deprecated:
//
//     void legacy_function() throw(int);
//
// In C++17, dynamic exception specifications are completely removed.
// Uncommenting the declaration below must cause a compilation error.
//
// void legacy_function() throw(int); // expected to be ill-formed in C++17

// Correct C++17-style exception specification using noexcept
void safe_function() noexcept
{
    // This function guarantees not to throw.
}

// A function without noexcept may throw exceptions
void unsafe_function()
{
}

// Compile-time checks using the noexcept operator
static_assert(noexcept(safe_function()),
              "safe_function must be noexcept in C++17");

static_assert(!noexcept(unsafe_function()),
              "unsafe_function must not be noexcept");

int main()
{
    // Call the functions to ensure they are odr-used
    safe_function();
    unsafe_function();

    // If compilation succeeds and static_asserts pass,
    // the test is considered successful.
    return EXIT_SUCCESS;
}

