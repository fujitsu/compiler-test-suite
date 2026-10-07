/*
 * FEATURE: C++23 Change scope of lambda trailing-return-type
 * SPEC: P2036R3 Change scope of lambda trailing-return-type,
 *       P2579R0 Mitigation strategies for P2036
 * PURPOSE: Verify that lambda captures are visible with the correct type
 *          in parameter declarations and trailing return types.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror lambda_trailing_return_scope.cpp
 */

#include <cstdlib>
#include <type_traits>

int main()
{
    // Verify init-capture name lookup in trailing-return-type
    {
        auto counter = [j = 0]() mutable -> decltype(j) {
            return j++;
        };

        static_assert(std::is_same_v<decltype(counter()), int>);

        if (counter() != 0) {
            return EXIT_FAILURE;
        }

        if (counter() != 1) {
            return EXIT_FAILURE;
        }
    }

    // Verify captured variable is visible in trailing-return-type
    {
        int value = 42;

        auto lambda = [value]() -> decltype(value) {
            return value;
        };

        static_assert(std::is_same_v<decltype(lambda()), int>);

        if (lambda() != 42) {
            return EXIT_FAILURE;
        }
    }

    // Verify reference capture lookup in trailing-return-type
    {
        int value = 7;

        auto lambda = [&value]() -> decltype((value)) {
            return value;
        };

        static_assert(std::is_same_v<decltype(lambda()), int&>);

        lambda() = 11;

        if (value != 11) {
            return EXIT_FAILURE;
        }
    }

    // Verify init-capture shadows outer variable in trailing-return-type
    {
        double x = 3.5;

        auto lambda = [x = 1]() -> decltype(x) {
            return x;
        };

        static_assert(std::is_same_v<decltype(lambda()), int>);

        if (lambda() != 1) {
            return EXIT_FAILURE;
        }

        if (x != 3.5) {
            return EXIT_FAILURE;
        }
    }

    // Verify mutable lambda with init-capture in trailing-return-type
    {
        auto lambda = [count = 10]() mutable -> decltype(count) {
            return ++count;
        };

        static_assert(std::is_same_v<decltype(lambda()), int>);

        if (lambda() != 11) {
            return EXIT_FAILURE;
        }

        if (lambda() != 12) {
            return EXIT_FAILURE;
        }
    }

    return EXIT_SUCCESS;
}
