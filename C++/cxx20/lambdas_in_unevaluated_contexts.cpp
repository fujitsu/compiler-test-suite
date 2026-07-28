/*
FEATURE: C++20 Lambdas in unevaluated contexts
SPEC: P0315R4 (Lambdas in unevaluated contexts), C++20 [expr.prim.lambda]
PURPOSE: Verify that lambda-expressions can appear in unevaluated contexts
         such as decltype and sizeof, and that their types can be used
         in compile-time checks.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror lambdas_in_unevaluated_contexts.cpp
*/

#include <type_traits>
#include <utility>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Use a lambda directly inside decltype (unevaluated context).
using LambdaType = decltype([](int x) { return x + 1; });

// Use a lambda inside sizeof (unevaluated context).
constexpr std::size_t lambda_size =
    sizeof([](double d) { return d * 2.0; });

// Verify properties of the lambda type at compile time.
static_assert(std::is_class_v<LambdaType>,
              "LambdaType should be a class type");

static_assert(std::is_invocable_r_v<int, LambdaType, int>,
              "LambdaType should be invocable with int and return int");

static_assert(lambda_size > 0,
              "Sizeof lambda in unevaluated context should be valid and non-zero");

int main()
{
    // Instantiate the lambda type obtained via decltype.
    LambdaType f{};

    // Verify runtime behavior to ensure the type is usable.
    if (f(10) != 11)
        return EXIT_FAILURE;

    // Additional sanity check: another lambda in decltype.
    using AnotherLambda = decltype([] { return 42; });
    static_assert(std::is_invocable_r_v<int, AnotherLambda>,
                  "AnotherLambda should return int");

    AnotherLambda g{};
    if (g() != 42)
        return EXIT_FAILURE;

    return EXIT_SUCCESS;
}
