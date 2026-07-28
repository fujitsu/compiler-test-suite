/*
FEATURE: C++20 More implicit moves
SPEC: P1155R3, P1825R0
PURPOSE: Verify implicit move from move-eligible expressions,
         including conversion to a different return type,
         parenthesized expressions, multiple return paths,
         and lambda return statements.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror more_implicit_moves.cpp
*/

#include <utility>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/*
 * Source type used to test conversion during return.
 */
struct Source {
    int value;

    explicit Source(int v) : value(v) {}
};

/*
 * Target type that can only be constructed from Source&&.
 * Copy-based conversion is intentionally disabled.
 */
struct Target {
    int value;

    Target(const Source&) = delete;

    Target(Source&& src)
        : value(src.value)
    {
    }
};

/*
 * Verify conversion return from a move-eligible local object.
 */
Target make_target()
{
    Source src(100);
    return src;
}

/*
 * Verify that a parenthesized id-expression remains move-eligible.
 */
Target make_target_parenthesized()
{
    Source src(200);
    return (src);
}

/*
 * Verify nested parentheses around a move-eligible expression.
 */
Target make_target_nested_parentheses()
{
    Source src(300);
    return (((src)));
}

/*
 * Verify multiple return paths.
 */
Target make_target_if(bool flag)
{
    Source first(400);
    Source second(500);

    if (flag) {
        return first;
    }

    return second;
}

/*
 * Move-only type used for ordinary implicit move testing.
 */
struct MoveOnly {
    int value;

    explicit MoveOnly(int v) : value(v) {}

    MoveOnly(const MoveOnly&) = delete;
    MoveOnly& operator=(const MoveOnly&) = delete;

    MoveOnly(MoveOnly&&) = default;
    MoveOnly& operator=(MoveOnly&&) = default;
};

/*
 * Verify ordinary implicit move.
 */
MoveOnly make_move_only()
{
    MoveOnly obj(600);
    return obj;
}

/*
 * Verify multiple return paths with a move-only type.
 */
MoveOnly make_move_only_branch(bool flag)
{
    MoveOnly first(700);
    MoveOnly second(800);

    if (flag) {
        return first;
    }

    return second;
}

/*
 * Verify conversion return.
 */
bool test_conversion_return()
{
    Target t = make_target();
    return t.value == 100;
}

/*
 * Verify parenthesized return expression.
 */
bool test_parenthesized_return()
{
    Target t = make_target_parenthesized();
    return t.value == 200;
}

/*
 * Verify nested parentheses.
 */
bool test_nested_parentheses()
{
    Target t = make_target_nested_parentheses();
    return t.value == 300;
}

/*
 * Verify multiple return paths.
 */
bool test_if_return()
{
    return make_target_if(true).value == 400
        && make_target_if(false).value == 500;
}

/*
 * Verify ordinary move-only return.
 */
bool test_move_only_return()
{
    MoveOnly obj = make_move_only();
    return obj.value == 600;
}

/*
 * Verify move-only return from multiple paths.
 */
bool test_move_only_branch_return()
{
    return make_move_only_branch(true).value == 700
        && make_move_only_branch(false).value == 800;
}

/*
 * Verify implicit move inside a lambda return statement.
 */
bool test_lambda_return()
{
    auto lambda = []() -> Target {
        Source src(900);
        return src;
    };

    return lambda().value == 900;
}

/*
 * Execute all test cases.
 * Return 0 on success and non-zero on failure.
 */
int main()
{
    if (!test_conversion_return()) {
        return EXIT_FAILURE;
    }

    if (!test_parenthesized_return()) {
        return EXIT_FAILURE;
    }

    if (!test_nested_parentheses()) {
        return EXIT_FAILURE;
    }

    if (!test_if_return()) {
        return EXIT_FAILURE;
    }

    if (!test_move_only_return()) {
        return EXIT_FAILURE;
    }

    if (!test_move_only_branch_return()) {
        return EXIT_FAILURE;
    }

    if (!test_lambda_return()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
