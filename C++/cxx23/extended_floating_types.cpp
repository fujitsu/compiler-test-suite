/*
 * FEATURE: C++23 P1467R9 "Extended floating-point types and standard names"
 * SPEC: P1467R9
 * PURPOSE: Verify extended floating-point types and their corresponding
 *          floating-point literal suffixes supported by each compiler.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror extended_floating_types.cpp
 */

#include <cstdlib>
#include <type_traits>

int main()
{
    // Clang currently supports only the f16 suffix among those tested here,
    // while GCC also supports f32, f64, and f128.
#if defined(__clang__)
    constexpr auto f16 = 1.5f16;

    static_assert(std::is_same_v<decltype(f16), const _Float16>);
    static_assert(f16 == 1.5f16);

    if (f16 != 1.5f16)
        return EXIT_FAILURE;

#elif defined(__GNUC__)
    auto f16 = 1.0f16;
    auto f32 = 1.0f32;
    auto f64 = 1.0f64;
    auto f128 = 1.0f128;

    static_assert(std::is_floating_point_v<decltype(f16)>);
    static_assert(std::is_floating_point_v<decltype(f32)>);
    static_assert(std::is_floating_point_v<decltype(f64)>);
    static_assert(std::is_floating_point_v<decltype(f128)>);

    if (f16 != 1.0f16)
        return EXIT_FAILURE;
    if (f32 != 1.0f32)
        return EXIT_FAILURE;
    if (f64 != 1.0f64)
        return EXIT_FAILURE;
    if (f128 != 1.0f128)
        return EXIT_FAILURE;
#endif

    return EXIT_SUCCESS;
}
