/*
FEATURE: Modules
SPEC: ISO/IEC 14882:2020 (C++20) §10 [module]
PURPOSE: Verify that a named module can be imported and that
         exported declarations behave correctly.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror modules.cpp -fprebuilt-module-path=. 
*/

#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

import modules;

int main()
{
    // Test 1:
    // Verify exported function.
    if (module_api::add(10, 20) != 30)
        return EXIT_FAILURE;

    // Test 2:
    // Verify exported type and constexpr member function.
    constexpr module_api::Point p{3, 4};

    static_assert(p.sum() == 7);

    if (p.sum() != 7)
        return EXIT_FAILURE;

#ifdef __cpp_modules
    // Macro exists.
#else
    return EXIT_FAILURE;
#endif

    // If module_internal::hidden_value() were accessible here,
    // encapsulation would be broken.
    //
    // The following should NOT compile:
    //
    // int x = module_internal::hidden_value();

    return EXIT_SUCCESS;
}
