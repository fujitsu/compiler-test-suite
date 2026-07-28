/*
FEATURE: [[nodiscard("with reason")]]
SPEC: ISO/IEC 14882:2020, [dcl.attr.nodiscard]
PURPOSE: Verify that the C++20 nodiscard attribute accepts a reason string
         and that a program using the returned value executes correctly.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror nodiscard_with_reason.cpp
*/

#include <string>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/* Return a value that should not be discarded. */
[[nodiscard("The result must be checked by the caller")]]
int compute_value()
{
    return 42;
}

/* Return a status object that should not be discarded. */
struct [[nodiscard("Status information must be inspected")]] Status
{
    bool success;
};

/* Create a successful status value. */
Status get_status()
{
    return {true};
}

/* Verify nodiscard function behavior. */
bool test_nodiscard_function()
{
    const int value = compute_value();
    return value == 42;
}

/* Verify nodiscard type behavior. */
bool test_nodiscard_type()
{
    const Status status = get_status();
    return status.success;
}

/* Execute all runtime checks and return success/failure. */
int main()
{
    /* Verify the nodiscard function result. */
    if (!test_nodiscard_function())
    {
        return EXIT_FAILURE;
    }

    /* Verify the nodiscard type result. */
    if (!test_nodiscard_type())
    {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
