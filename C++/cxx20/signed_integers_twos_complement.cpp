/*
FEATURE: Signed integers are two's complement
SPEC: C++20 (P0907R4) §6.8.2 [basic.fundamental]
PURPOSE: Thoroughly verify that all standard signed integer types use two's complement representation without relying on undefined behavior.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror signed_integers_twos_complement.cpp
*/

#include <limits>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

template <typename T>
int test_type() {
    static_assert(std::is_signed_v<T>, "T must be signed");

    constexpr T zero = static_cast<T>(0);
    constexpr T one  = static_cast<T>(1);
    constexpr T minus_one = static_cast<T>(-1);

    // Test 1: ~0 == -1 (all bits set)
    if ((~zero) != minus_one) {
        return 1;
    }

    // Test 2: min == -max - 1
    {
        constexpr T max = std::numeric_limits<T>::max();
        constexpr T min = std::numeric_limits<T>::min();

        if (min != static_cast<T>(-max - one)) {
            return 2;
        }
    }

    // Test 3: unsigned round-trip wrap (max + 1 -> min)
    {
        using U = std::make_unsigned_t<T>;

        T max = std::numeric_limits<T>::max();
        T min = std::numeric_limits<T>::min();

        U u = static_cast<U>(max);
        u = static_cast<U>(u + 1); // well-defined wrap
        T result = static_cast<T>(u);

        if (result != min) {
            return 3;
        }
    }

    // Test 4: bit pattern of -1 is all ones
    {
        using U = std::make_unsigned_t<T>;
        U u = static_cast<U>(minus_one);

        if (u != std::numeric_limits<U>::max()) {
            return 4;
        }
    }

    // Test 5: two's complement identity (~x == -x - 1)
    {
        constexpr T x = static_cast<T>(42);

        if ((~x) != static_cast<T>(-x - one)) {
            return 5;
        }
    }

    return 0;
}

int main() {
    if (int r = test_type<signed char>()) return 10 + r;
    if (int r = test_type<short>())       return 20 + r;
    if (int r = test_type<int>())         return 30 + r;
    if (int r = test_type<long>())        return 40 + r;
    if (int r = test_type<long long>())   return 50 + r;

    return EXIT_SUCCESS;
}
