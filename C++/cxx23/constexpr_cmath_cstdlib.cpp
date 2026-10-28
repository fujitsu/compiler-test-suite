/*
 * FEATURE: C++23 constexpr for <cmath> and <cstdlib>
 * SPEC: P0533R9
 * PURPOSE: Verify that selected functions from <cmath> and <cstdlib>
 *          can be evaluated in constant expressions when supported.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror constexpr_cmath_cstdlib.cpp 
 */

#include <cmath>
#include <cstdlib>
#include <version>

#if defined(__cpp_lib_constexpr_cmath) && \
    __cpp_lib_constexpr_cmath >= 202202L

constexpr bool test_cmath()
{
    static_assert(std::abs(-42.0) == 42.0);
    static_assert(std::floor(3.8) == 3.0);
    static_assert(std::ceil(3.2) == 4.0);
    static_assert(std::fmin(3.0, 5.0) == 3.0);
    static_assert(std::fmax(3.0, 5.0) == 5.0);

    return true;
}

constexpr bool test_cstdlib()
{
    static_assert(std::abs(-42) == 42);
    static_assert(std::abs(-42L) == 42L);
    static_assert(std::abs(-42LL) == 42LL);

    return true;
}

#endif

int main()
{
#if defined(__cpp_lib_constexpr_cmath) && \
    __cpp_lib_constexpr_cmath >= 202202L
    static_assert(test_cmath());
    static_assert(test_cstdlib());
#endif

    return EXIT_SUCCESS;
}
