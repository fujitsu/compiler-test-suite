/*
 * FEATURE: C++23 P2448R2 "Relaxing some constexpr restrictions"
 * SPEC: P2448R2
 * PURPOSE: Verify that functions can be declared constexpr even when
 *          they cannot produce a constant expression.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror relaxed_constexpr.cpp
 */

/*
This test verifies the relaxed restrictions on constexpr functions
introduced by C++23.

The test covers:
1. constexpr functions returning non-literal types.
2. constexpr functions accepting references to non-literal types.
3. constexpr functions that cannot produce a constant expression.
4. Preservation of ordinary compile-time constant evaluation.
*/

#include <cstdlib>
#include <memory>

// A constexpr function returning a non-literal type.
// std::shared_ptr is not a literal type.
constexpr std::shared_ptr<int> create_shared_value(int value)
{
    return std::make_shared<int>(value);
}

// A constexpr function accepting a reference to a non-literal type.
constexpr int get_shared_value(const std::shared_ptr<int>& ptr)
{
    return ptr ? *ptr : 0;
}

// A non-constexpr function used by the following test.
int get_runtime_value()
{
    return 123;
}

// A constexpr function that unconditionally calls a non-constexpr function.
// It cannot produce a constant expression, but its declaration is valid
// under P2448R2.
constexpr int call_non_constexpr_function()
{
    return get_runtime_value();
}

// An ordinary constexpr function that can be evaluated at compile time.
constexpr int calculate_sum(int a, int b)
{
    return a + b;
}

// Verify that ordinary constant evaluation still works.
static_assert(calculate_sum(10, 20) == 30);

int main()
{
    // Test 1: A constexpr function with a non-literal return type.
    std::shared_ptr<int> ptr = create_shared_value(100);

    if (!ptr || *ptr != 100)
    {
        return 1;
    }

    // Test 2: A constexpr function accepting a reference
    // to a non-literal type.
    if (get_shared_value(ptr) != 100)
    {
        return 2;
    }

    // Test 3: A constexpr function that cannot produce
    // a constant expression.
    if (call_non_constexpr_function() != 123)
    {
        return 3;
    }

    // Test 4: An ordinary constexpr function evaluated at runtime.
    if (calculate_sum(15, 25) != 40)
    {
        return 4;
    }

    return EXIT_SUCCESS;
}
