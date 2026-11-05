/*
 * FEATURE: C++23 Support for #warning
 * SPEC: P2437R1 "Support for #warning"
 * PURPOSE: Verify that the #warning directive is recognized and produces
 *          a diagnostic message.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror warning_directive.cpp
 */

#include <cstdlib>

#warning "P2437R1 #warning directive test"

int main()
{
    return EXIT_SUCCESS;
}
