/*
FEATURE: C++20 Concepts
SPEC: ISO/IEC 14882:2020 §13.5 [temp.constr], §13.7 [temp.concept]
PURPOSE: Verify that concepts, requires-expressions, and constrained templates
         are correctly supported and enforced at compile time.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror concepts.cpp
*/

#include <concepts>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A simple custom concept using a requires-expression.
template <typename T>
concept Addable = requires(T a, T b) {
    { a + b } -> std::same_as<T>;
};

// A function constrained by a standard concept.
template <std::integral T>
T add_integral(T a, T b) {
    return a + b;
}

// A function constrained by a custom concept.
template <Addable T>
T add_generic(T a, T b) {
    return a + b;
}

// A type that satisfies Addable.
struct Number {
    int value;
    Number(int v) : value(v) {}
};

Number operator+(const Number& lhs, const Number& rhs) {
    return Number(lhs.value + rhs.value);
}

// A type that does NOT satisfy Addable (no operator+).
struct NotAddable {
    int value;
};

int main() {
    // Check standard concept constraint.
    static_assert(std::integral<int>);
    static_assert(!std::integral<double>);

    // Check custom concept satisfaction.
    static_assert(Addable<int>);
    static_assert(Addable<Number>);
    static_assert(!Addable<NotAddable>);

    // Runtime checks for constrained functions.
    if (add_integral(2, 3) != 5) {
        return EXIT_FAILURE;
    }

    Number n1(4);
    Number n2(6);
    Number n3 = add_generic(n1, n2);
    if (n3.value != 10) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

