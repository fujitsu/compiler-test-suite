/* FEATURE: New auto rules for direct-list-initialization

SPEC: C++17 Standard (N4659 [dcl.init.list])
PURPOSE: Verify that in C++17, 'auto' with direct-list-initialization
         follows the new deduction rules:
         - 'auto x{expr};' deduces std::initializer_list<T> if possible.
         - 'auto x = {expr};' always deduces std::initializer_list<T>.
         - 'auto x{expr1, expr2, ...};' is ill-formed (no deduction).
         - 'auto x{single_value};' deduces the type of single_value directly.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror direct_list_init_auto.cpp
*/

#include <type_traits>
#include <initializer_list>

int main() {
    // Case 1: Simple direct-list-initialization with a single value
    // In C++17, 'auto x{1};' deduces 'int', not 'std::initializer_list<int>'
    auto x{1};
    static_assert(std::is_same_v<decltype(x), int>, "auto x{1} should deduce int");

    // Case 2: Direct-list-initialization with multiple elements
    // This should be ill-formed in C++17; it fails to compile.
    // Uncommenting the next line should cause a compilation error.
    // auto y{1, 2}; // ERROR: cannot deduce from braced-init-list with multiple elements

    // Case 3: Copy-list-initialization with '='
    // 'auto z = {1, 2};' deduces 'std::initializer_list<int>'
    auto z = {1, 2};
    static_assert(std::is_same_v<decltype(z), std::initializer_list<int>>,
                  "auto z = {1, 2} should deduce std::initializer_list<int>");

    // Case 4: Explicit initializer_list construction
    // Confirm consistency with the deduction rules
    std::initializer_list<int> expected = {1, 2};
    static_assert(std::is_same_v<decltype(z), decltype(expected)>,
                  "Both should be std::initializer_list<int>");

    return 0; // success
}

