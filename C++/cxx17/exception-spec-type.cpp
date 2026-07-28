/*
FEATURE: Make exception specifications part of the type system
SPEC: N4659 §14.5; P0012R1
PURPOSE: Ensure that noexcept specifications are part of function types and cause type distinction.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror exception-spec-type.cpp
*/

#include <type_traits>

// Function declarations with and without noexcept
void f_noexcept() noexcept;
void f_plain();

using fn_noexcept_t = void() noexcept;
using fn_plain_t    = void();

int main() {
    // Check that the types are different as required in C++17
    bool types_are_different =
        !std::is_same<fn_noexcept_t, fn_plain_t>::value;

    if (!types_are_different) {
        return 1; // failed
    }

    // Check that function pointers also reflect the distinction
    using fp_noexcept_t = void(*)() noexcept;
    using fp_plain_t    = void(*)();

    bool pointer_types_are_different =
        !std::is_same<fp_noexcept_t, fp_plain_t>::value;

    if (!pointer_types_are_different) {
        return 2; // failed
    }

    // Check that taking the address of the functions produces distinct types
    bool addr_f_noexcept_ok =
        std::is_same<decltype(&f_noexcept), fp_noexcept_t>::value;

    if (!addr_f_noexcept_ok) {
        return 3; // failed
    }

    bool addr_f_plain_ok =
        std::is_same<decltype(&f_plain), fp_plain_t>::value;

    if (!addr_f_plain_ok) {
        return 4; // failed
    }

    return 0; // success
}

