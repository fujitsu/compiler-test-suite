/*
FEATURE: C++20 template-parameter-list for generic lambdas
SPEC: ISO/IEC 14882:2020, §7.5.5 [expr.prim.lambda]
PURPOSE: Verify that a generic lambda can declare an explicit template-parameter-list
         and that the parameters work correctly with type and non-type template arguments.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror lambda_template_parameter_list.cpp
*/

#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int main()
{
    // Generic lambda with an explicit type template parameter.
    auto identity = []<typename T>(T value) {
        return value;
    };

    int i = identity(42);
    double d = identity(3.14);

    if (i != 42) {
        return EXIT_FAILURE;
    }
    if (d != 3.14) {
        return EXIT_FAILURE;
    }

    // Generic lambda with a non-type template parameter.
    auto multiply_by = []<std::size_t Factor>(int value) {
        return static_cast<int>(Factor) * value;
    };

    int a = multiply_by.operator()<2>(10);
    int b = multiply_by.operator()<5>(3);

    if (a != 20) {
        return EXIT_FAILURE;
    }
    if (b != 15) {
        return EXIT_FAILURE;
    }

    // Generic lambda with a constrained template parameter (type trait check).
    auto is_integral_lambda = []<typename T>(T) {
        return std::is_integral_v<T>;
    };

    if (!is_integral_lambda(1)) {
        return EXIT_FAILURE;
    }
    if (is_integral_lambda(1.0)) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

