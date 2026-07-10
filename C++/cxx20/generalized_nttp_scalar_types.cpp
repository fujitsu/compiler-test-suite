/*
FEATURE: Generalized non-type template parameters of scalar type
SPEC: P1907R1 / C++20 [temp.param] and [temp.arg.nontype]
PURPOSE: Verify that various scalar types (integral, pointer, enum, nullptr_t)
         can be used as non-type template parameters in a generalized way.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror generalized_nttp_scalar_types.cpp
*/

#include <cstddef>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// 1. Integral NTTP (baseline, should always work)
template <int N>
struct IntHolder {
    static constexpr int value = N;
};

// 2. Enum NTTP
enum class Color { Red, Green, Blue };

template <Color C>
struct EnumHolder {
    static constexpr Color value = C;
};

// 3. Pointer NTTP
constexpr int global_value = 42;

template <const int* Ptr>
struct PointerHolder {
    static constexpr int value = *Ptr;
};

// 4. nullptr_t NTTP
template <std::nullptr_t P>
struct NullptrHolder {
    static constexpr bool is_null = (P == nullptr);
};

// 5. Boolean NTTP
template <bool B>
struct BoolHolder {
    static constexpr bool value = B;
};

// 6. Mixed usage to ensure consistency
template <int N, const int* P, Color C, bool B, std::nullptr_t NP>
struct MixedHolder {
    static constexpr bool check() {
        return (N == 7)
            && (*P == 42)
            && (C == Color::Green)
            && (B == true)
            && (NP == nullptr);
    }
};

// 7. Floating point NTTP
template <float F>
struct FloatHolder {
    static constexpr float value = F;
};
template <double D>
struct DoubleHolder {
    static constexpr double value = D;
};

int main() {
    // Test 1: Integral
    if (IntHolder<5>::value != 5) return EXIT_FAILURE;

    // Test 2: Enum
    if (EnumHolder<Color::Red>::value != Color::Red) return EXIT_FAILURE;

    // Test 3: Pointer
    if (PointerHolder<&global_value>::value != 42) return EXIT_FAILURE;

    // Test 4: nullptr_t
    if (!NullptrHolder<nullptr>::is_null) return EXIT_FAILURE;

    // Test 5: Bool
    if (!BoolHolder<true>::value) return EXIT_FAILURE;

    // Test 6: Mixed
    if (!MixedHolder<7, &global_value, Color::Green, true, nullptr>::check())
        return EXIT_FAILURE;

    // Test 7: Floating point
    if (FloatHolder<1.5F>::value != 1.5F) return EXIT_FAILURE;
    if (DoubleHolder<1.5>::value != 1.5) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
