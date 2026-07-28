/*
FEATURE: [[nodiscard("with reason")]]
SPEC: ISO/IEC 14882:2020 [dcl.attr.nodiscard]
PURPOSE: Verify that Clang emits diagnostics containing the specified
         reason string when nodiscard entities are discarded. Test
         functions, classes, enums, and constructors.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror -fsyntax-only -Xclang -verify nodiscard_with_reason_diagnostics.cpp
*/

/* Verify nodiscard applied to a function. */
[[nodiscard("Function result must be checked")]]
int get_value()
{
    return 42;
}

/* Verify nodiscard applied to a class type. */
struct [[nodiscard("Status object must be inspected")]] Status
{
    bool success;
};

/* Create a Status object. */
Status get_status()
{
    return {true};
}

/* Verify nodiscard applied to an enum type. */
enum class [[nodiscard("Enumeration result must be checked")]] Result
{
    Failure,
    Success
};

/* Create a Result value. */
Result get_result()
{
    return Result::Success;
}

/* Verify nodiscard applied to a constructor. */
struct Token
{
    [[nodiscard("Constructed token must be used")]]
    explicit Token(int v)
        : value(v)
    {
    }

    int value;
};

/* Intentionally discard nodiscard entities to trigger diagnostics. */
void test_diagnostics()
{
    /* Function diagnostic. */
    get_value();
    // expected-warning@-1 {{Function result must be checked}}

    /* Class diagnostic. */
    get_status();
    // expected-warning@-1 {{Status object must be inspected}}

    /* Enum diagnostic. */
    get_result();
    // expected-warning@-1 {{Enumeration result must be checked}}

    /* Constructor diagnostic. */
    Token(123);
    // expected-warning@-1 {{Constructed token must be used}}
}

/* Entry point. */
int main()
{
    return 0;
}
