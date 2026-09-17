/*
 * FEATURE: C++23
 * SPEC: P1949R7 C++ Identifier Syntax using Unicode Standard Annex 31
 * PURPOSE: Verify that identifiers conform to the UAX 31 based identifier rules adopted by P1949R7.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror uax31_identifier.cpp
 */

#include <cstdlib>

int main()
{
    // Test an underscore as an identifier-start character.
    int _identifier = 1;
    if (_identifier != 1)
    {
        return EXIT_FAILURE;
    }

    // Test an ASCII letter followed by decimal digits.
    int identifier123 = 2;
    if (identifier123 != 2)
    {
        return EXIT_FAILURE;
    }

    // Test a Greek letter with the XID_Start property.
    int α = 3;
    if (α != 3)
    {
        return EXIT_FAILURE;
    }

    // Test Greek letters with XID_Start and XID_Continue properties.
    int ελληνικά = 4;
    if (ελληνικά != 4)
    {
        return EXIT_FAILURE;
    }

    // Test Cyrillic letters with XID_Start and XID_Continue properties.
    int переменная = 5;
    if (переменная != 5)
    {
        return EXIT_FAILURE;
    }

    // Test Japanese characters with XID_Start and XID_Continue properties.
    int 識別子 = 6;
    if (識別子 != 6)
    {
        return EXIT_FAILURE;
    }

    // Test a Unicode identifier followed by an ASCII decimal digit.
    int 値1 = 7;
    if (値1 != 7)
    {
        return EXIT_FAILURE;
    }

    // Test a precomposed non-ASCII Latin character in an identifier.
    int café = 8;
    if (café != 8)
    {
        return EXIT_FAILURE;
    }

    // Test universal character names in an identifier.
    int \u03B2\u03B3 = 9;
    if (\u03B2\u03B3 != 9)
    {
        return EXIT_FAILURE;
    }

    // Test an identifier containing characters from multiple scripts.
    int value_値_α = 10;
    if (value_値_α != 10)
    {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

