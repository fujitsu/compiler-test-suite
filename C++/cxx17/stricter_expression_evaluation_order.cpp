/*
FEATURE: Stricter expression evaluation order
SPEC: ISO/IEC 14882:2017 (C++17) §8.18 [expr.ass], §15.4 [intro.execution]
PURPOSE: Verify that C++17 defines a strict sequencing rule for assignment
         expressions, making previously undefined expressions well-defined.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror stricter_expression_evaluation_order.cpp
*/

#include <cstdlib>

// C++ Assignment Operator
int assign_op(void)
{
    /*
     * Before C++17, the expression below had undefined behavior because
     * the read and modification of 'i' were unsequenced.
     *
     * In C++17, the right-hand side of the assignment is sequenced
     * before the actual assignment to the left-hand side.
     *
     * Therefore, the side effect of i++ is fully evaluated before
     * the assignment to 'i' takes place.
     */
    int i = 1;
    i = i++;

    /*
     * With C++17 rules, the result is well-defined:
     * - i++ yields the old value (1) and increments i to 2
     * - the assignment then stores the old value (1) into i
     * - final value of i is 1
     */
    // C++17: well-defined, final value must be 1
    return (i == 1) ? EXIT_SUCCESS : EXIT_FAILURE;
}

// C++ Compound Assignment Operator
int comp_assign_op(void)
{
    int i = 1;
    int j = (i += i++);

    // C++17:
    // i++ yields 1, increments i to 2
    // i += 1 -> i becomes 3
    // j receives 3
    return (i == 3 && j == 3) ? EXIT_SUCCESS : EXIT_FAILURE;
}

// C++ Function Call
int g = 0;

int f(int)
{
    // All argument side effects must be complete before this runs
    if (g != 2) {
        return EXIT_FAILURE;
    }
    return EXIT_SUCCESS;
}

int func_call(void)
{
    return f(g = 2);
}

// C++ Conditional Operator
int cond_op(void)
{
    int i = 0;

    bool cond = true;
    int result = cond ? ++i : (i += 10);

    // Only ++i must be evaluated
    return (i == 1 && result == 1) ? EXIT_SUCCESS : EXIT_FAILURE;
}

// C++ Logical AND Operator
int log_and_op(void)
{
    int i = 0;

    false && (++i);

    // Right operand must not be evaluated
    return (i == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}

// C++ Logical OR Operator
int log_or_op(void)
{
    int i = 0;

    true || (++i);

    // Right operand must not be evaluated
    return (i == 0) ? EXIT_SUCCESS : EXIT_FAILURE;
}

// C++ Comma Operator
int comma_op(void)
{
    int i = 0;
    int j = (i = 1, i = 2);

    // Left expression sequenced before right
    return (i == 2 && j == 2) ? EXIT_SUCCESS : EXIT_FAILURE;
}

int main()
{
    int ret_value = EXIT_SUCCESS;

    ret_value = assign_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = comp_assign_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = func_call();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = cond_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = log_and_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = log_or_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    ret_value = comma_op();
    if (ret_value == EXIT_FAILURE) return EXIT_FAILURE;

    return ret_value;
}

