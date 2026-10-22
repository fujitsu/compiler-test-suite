/*
 * FEATURE: C++23 auto(x): decay-copy in the language
 * SPEC: P0849R8 
 * PURPOSE: Verify that auto(x) and auto{x} perform decay-copy and produce prvalues.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror auto_decay_copy.cpp
 */
#include <type_traits>
#include <utility>
#include <cstdlib>

int function(int x)
{
    return x + 1;
}

int main()
{
    // Verify that auto(x) removes cv-qualifiers and references.
    const int value = 42;
    const int& ref = value;

    static_assert(std::is_same_v<decltype(auto(ref)), int>);
    static_assert(!std::is_reference_v<decltype(auto(ref))>);

    auto copied = auto(ref);

    if (copied != 42) {
        return 1;
    }

    // Verify that auto{x} also produces a copied value.
    auto braced_copy = auto{ref};

    static_assert(std::is_same_v<decltype(auto{ref}), int>);

    if (braced_copy != 42) {
        return 2;
    }

    // Verify array-to-pointer decay.
    int array[] = {1, 2, 3};

    static_assert(std::is_same_v<decltype(auto(array)), int*>);

    auto pointer = auto(array);

    if (pointer != array || pointer[1] != 2) {
        return 3;
    }

    // Verify function-to-pointer decay.
    static_assert(
        std::is_same_v<decltype(auto(function)), int (*)(int)>);

    auto function_pointer = auto(function);

    if (function_pointer(41) != 42) {
        return 4;
    }

    // Verify that an rvalue can be moved by auto(x).
    static_assert(
        std::is_same_v<decltype(auto(std::declval<int&&>())), int>);

    int movable = 42;
    auto moved = auto(std::move(movable));

    if (moved != 42) {
        return 5;
    }

    return EXIT_SUCCESS;
}
