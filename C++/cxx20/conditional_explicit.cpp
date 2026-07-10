/*
FEATURE: C++20 conditional explicit (explicit(bool))
SPEC: P0892R2, C++20 §11.4.2 [class.conv.ctor], §11.4.8 [class.conv.fct]
PURPOSE: Verify that explicit(bool) correctly controls implicit conversions
         for constructors and conversion operators based on compile-time conditions.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror conditional_explicit.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Test 1: Constructor with conditional explicit
template <bool Implicit>
struct Wrapper {
    int value;

    explicit(!Implicit) Wrapper(int v) : value(v) {}
};

// Test 2: Conversion operator with conditional explicit
template <bool Implicit>
struct Convertible {
    int value;

    explicit(!Implicit) operator int() const {
        return value;
    }
};

// Helper: detect implicit constructibility
template <typename T>
constexpr bool is_implicitly_constructible_v =
    std::is_convertible_v<int, T>;

// Helper: detect implicit convertibility to int
template <typename T>
constexpr bool is_implicitly_convertible_to_int_v =
    std::is_convertible_v<T, int>;

int main() {
    // ---- Constructor tests ----

    // Implicit == true → implicit conversion allowed
    static_assert(is_implicitly_constructible_v<Wrapper<true>>,
                  "Wrapper<true> should allow implicit construction");

    // Implicit == false → explicit required
    static_assert(!is_implicitly_constructible_v<Wrapper<false>>,
                  "Wrapper<false> should NOT allow implicit construction");

    // Runtime checks
    Wrapper<true> w1 = 10;        // implicit OK
    Wrapper<false> w2(20);        // explicit required

    if (w1.value != 10) return EXIT_FAILURE;
    if (w2.value != 20) return EXIT_FAILURE;

    // ---- Conversion operator tests ----

    Convertible<true> c1{30};
    Convertible<false> c2{40};

    // Implicit == true → implicit conversion allowed
    static_assert(is_implicitly_convertible_to_int_v<Convertible<true>>,
                  "Convertible<true> should allow implicit conversion");

    // Implicit == false → explicit required
    static_assert(!is_implicitly_convertible_to_int_v<Convertible<false>>,
                  "Convertible<false> should NOT allow implicit conversion");

    int x = c1;           // implicit OK
    int y = static_cast<int>(c2); // explicit required

    if (x != 30) return EXIT_FAILURE;
    if (y != 40) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}

