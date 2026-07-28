/*
FEATURE: C++20 Feature test macros (comprehensive, LLVM-style)
SPEC: SD-6: SG10 Feature Test Recommendations, C++20
PURPOSE: Verify that major C++20 feature test macros are defined
         with at least the required baseline values. Uses explicit
         #if / #ifdef checks instead of macro abstraction to ensure
         portability and reliability across compilers.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror feature_test_macros.cpp
*/

#include <version>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main() {

    // =========================
    // Language features (required)
    // =========================

#ifndef __cpp_concepts
    return EXIT_FAILURE;
#elif __cpp_concepts < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_consteval
    return EXIT_FAILURE;
#elif __cpp_consteval < 201811L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_constinit
    return EXIT_FAILURE;
#elif __cpp_constinit < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_using_enum
    return EXIT_FAILURE;
#elif __cpp_using_enum < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_impl_three_way_comparison
    return EXIT_FAILURE;
#elif __cpp_impl_three_way_comparison < 201907L
    return EXIT_FAILURE;
#endif

    // =========================
    // Language features (optional / impl-defined)
    // =========================

#ifdef __cpp_modules
#  if __cpp_modules != 1 && __cpp_modules < 201907L
    return EXIT_FAILURE;
#  endif
#endif

#ifdef __cpp_coroutines
#  if __cpp_coroutines < 201902L
    return EXIT_FAILURE;
#  endif
#endif

    // =========================
    // Lambda / constexpr improvements
    // =========================

#ifndef __cpp_generic_lambdas
    return EXIT_FAILURE;
#elif __cpp_generic_lambdas < 201707L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_init_captures
    return EXIT_FAILURE;
#elif __cpp_init_captures < 201803L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_constexpr
    return EXIT_FAILURE;
#elif __cpp_constexpr < 201907L
    return EXIT_FAILURE;
#endif

    // =========================
    // Library features (required)
    // =========================

#ifndef __cpp_lib_concepts
    return EXIT_FAILURE;
#elif __cpp_lib_concepts < 202002L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_ranges
    return EXIT_FAILURE;
#elif __cpp_lib_ranges < 201911L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_span
    return EXIT_FAILURE;
#elif __cpp_lib_span < 202002L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_bit_cast
    return EXIT_FAILURE;
#elif __cpp_lib_bit_cast < 201806L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_endian
    return EXIT_FAILURE;
#elif __cpp_lib_endian < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_integer_comparison_functions
    return EXIT_FAILURE;
#elif __cpp_lib_integer_comparison_functions < 202002L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_remove_cvref
    return EXIT_FAILURE;
#elif __cpp_lib_remove_cvref < 201711L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_type_identity
    return EXIT_FAILURE;
#elif __cpp_lib_type_identity < 201806L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_is_constant_evaluated
    return EXIT_FAILURE;
#elif __cpp_lib_is_constant_evaluated < 201811L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_constexpr_algorithms
    return EXIT_FAILURE;
#elif __cpp_lib_constexpr_algorithms < 201806L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_constexpr_vector
    return EXIT_FAILURE;
#elif __cpp_lib_constexpr_vector < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_constexpr_string
    return EXIT_FAILURE;
#elif __cpp_lib_constexpr_string < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_starts_ends_with
    return EXIT_FAILURE;
#elif __cpp_lib_starts_ends_with < 201711L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_array_constexpr
    return EXIT_FAILURE;
#elif __cpp_lib_array_constexpr < 201811L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_to_array
    return EXIT_FAILURE;
#elif __cpp_lib_to_array < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_ssize
    return EXIT_FAILURE;
#elif __cpp_lib_ssize < 201902L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_atomic_ref
    return EXIT_FAILURE;
#elif __cpp_lib_atomic_ref < 201806L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_jthread
    return EXIT_FAILURE;
#elif __cpp_lib_jthread < 201911L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_stop_token
    return EXIT_FAILURE;
#elif __cpp_lib_stop_token < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_semaphore
    return EXIT_FAILURE;
#elif __cpp_lib_semaphore < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_latch
    return EXIT_FAILURE;
#elif __cpp_lib_latch < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_barrier
    return EXIT_FAILURE;
#elif __cpp_lib_barrier < 201907L
    return EXIT_FAILURE;
#endif

#ifndef __cpp_lib_atomic_wait
    return EXIT_FAILURE;
#elif __cpp_lib_atomic_wait < 201907L
    return EXIT_FAILURE;
#endif

    // =========================
    // Optional library features
    // =========================

#ifdef __cpp_lib_format
#  if __cpp_lib_format < 201907L
    return EXIT_FAILURE;
#  endif
#endif

#ifdef __cpp_lib_source_location
#  if __cpp_lib_source_location < 201907L
    return EXIT_FAILURE;
#  endif
#endif

#ifdef __cpp_lib_syncbuf
#  if __cpp_lib_syncbuf < 201803L
    return EXIT_FAILURE;
#  endif
#endif

#ifdef __cpp_lib_coroutine
#  if __cpp_lib_coroutine < 201902L
    return EXIT_FAILURE;
#  endif
#endif

    // =========================
    // <version> header sanity
    // =========================

#ifdef __has_include
#  if !__has_include(<version>)
    return EXIT_FAILURE;
#  endif
#endif

    return EXIT_SUCCESS;
}
