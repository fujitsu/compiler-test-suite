/*
FEATURE: C++20 using enum
SPEC: P1099R5 Using Enum, C++20 [namespace.udecl]
PURPOSE: Verify that using enum introduces enumerators into the current scope
         and allows unqualified access to scoped enumeration values.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror using_enum.cpp
*/

#include <cstdint>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/* Scoped enumeration used throughout the test. */
enum class Color : std::uint8_t {
    Red,
    Green,
    Blue
};

/* Another scoped enumeration for additional verification. */
enum class State : std::uint8_t {
    Idle,
    Running,
    Stopped
};

/* Verify block-scope using enum. */
bool test_block_scope()
{
    /* Introduce all Color enumerators into this scope. */
    using enum Color;

    /* Verify that unqualified enumerator names are usable. */
    Color c1 = Red;
    Color c2 = Green;
    Color c3 = Blue;

    return c1 == Color::Red
        && c2 == Color::Green
        && c3 == Color::Blue;
}

/* Verify using enum in a switch statement. */
bool test_switch_statement()
{
    /* Introduce all State enumerators into this scope. */
    using enum State;

    State s = Running;

    switch (s) {
    case Idle:
        return false;

    case Running:
        return true;

    case Stopped:
        return false;
    }

    return false;
}

/* Verify class-scope using enum. */
struct StateChecker
{
    /* Introduce enumerators into class scope. */
    using enum State;

    static bool is_running(State s)
    {
        return s == Running;
    }

    static bool is_idle(State s)
    {
        return s == Idle;
    }
};

/* Verify that using enum works independently in different scopes. */
bool test_multiple_scopes()
{
    {
        using enum Color;

        Color c = Blue;

        if (c != Color::Blue) {
            return false;
        }
    }

    {
        using enum State;

        State s = Stopped;

        if (s != State::Stopped) {
            return false;
        }
    }

    return true;
}

/* Execute all test cases and return success only if all pass. */
int main()
{
    if (!test_block_scope()) {
        return EXIT_FAILURE;
    }

    if (!test_switch_statement()) {
        return EXIT_FAILURE;
    }

    if (!StateChecker::is_running(State::Running)) {
        return EXIT_FAILURE;
    }

    if (!StateChecker::is_idle(State::Idle)) {
        return EXIT_FAILURE;
    }

    if (!test_multiple_scopes()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
