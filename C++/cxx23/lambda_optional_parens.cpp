/*
FEATURE:
  C++23 Make () in lambdas optional in all cases
SPEC:
  P1102R2 Down with ()!
PURPOSE:
  Verify that parameterless lambdas can omit () when using mutable,
  constexpr, consteval, noexcept, trailing return types, template
  parameter lists, requires clauses, multiple captures, and combined
  lambda specifiers.
RUN:
  clang++ -std=c++23 -Wall -Wextra -Werror lambda_optional_parens.cpp
*/

#include <cstdlib>
#include <type_traits>

int main()
{
    // Test 1: mutable lambda without ()
    auto mutable_lambda = [value = 1] mutable {
        ++value;
        return value;
    };

    if (mutable_lambda() != 2) {
        return EXIT_FAILURE;
    }

    // Test 2: constexpr lambda without ()
    constexpr auto constexpr_lambda = [] constexpr {
        return 10;
    };

    static_assert(constexpr_lambda() == 10);

    if (constexpr_lambda() != 10) {
        return EXIT_FAILURE;
    }

    // Test 3: consteval lambda without ()
    constexpr auto consteval_result = [] consteval {
        return 20;
    }();

    static_assert(consteval_result == 20);

    if (consteval_result != 20) {
        return EXIT_FAILURE;
    }

    // Test 4: noexcept lambda without ()
    auto noexcept_lambda = [] noexcept {
        return 30;
    };

    if (noexcept_lambda() != 30) {
        return EXIT_FAILURE;
    }

    // Test 5: lambda with trailing return type without ()
    auto return_type_lambda = [] -> long {
        return 40L;
    };

    static_assert(
        std::is_same_v<decltype(return_type_lambda()), long>
    );

    if (return_type_lambda() != 40L) {
        return EXIT_FAILURE;
    }

    // Test 6: template lambda without ()
    auto template_lambda = []<typename T> {
        return sizeof(T);
    };

    if (template_lambda.template operator()<int>() != sizeof(int)) {
        return EXIT_FAILURE;
    }

    // Test 7: template lambda with requires clause without ()
    auto requires_lambda = []<typename T>
        requires (sizeof(T) >= 2)
    {
        return sizeof(T);
    };

    if (requires_lambda.template operator()<int>() != sizeof(int)) {
        return EXIT_FAILURE;
    }

    // Test 8: lambda with multiple captures and mutable without ()
    auto capture_lambda = [x = 1, y = 2] mutable {
        ++x;
        ++y;
        return x + y;
    };

    if (capture_lambda() != 5) {
        return EXIT_FAILURE;
    }

    // Test 9: lambda with combined specifiers without ()
    auto combined_lambda = [value = 5] mutable noexcept -> int {
        value += 5;
        return value;
    };

    if (combined_lambda() != 10) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
