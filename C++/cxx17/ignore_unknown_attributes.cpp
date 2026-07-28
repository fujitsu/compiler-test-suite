/*
FEATURE: Requirement to ignore unknown attributes
SPEC: ISO/IEC 14882:2017, N4659 §10.6.1 [dcl.attr.grammar]
PURPOSE: Verify that unknown attributes with an attribute-namespace are ignored
         by the compiler and do not affect translation or execution.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror ignore_unknown_attributes.cpp
*/

#include <cstdlib>

/*
 * An attribute with an unknown attribute-namespace and attribute-name.
 * According to C++17, such attributes must be ignored.
 */
[[unknown_vendor::completely_unknown_attribute]]
int add(int a, int b)
{
    return a + b;
}

[[unknown_attr]] int add2(int a, int b) { return a + b; }
[[deprecated]] int add3(int a, int b) { return a + b; }

int main()
{
    /*
     * If the compiler incorrectly rejects or mishandles the unknown attribute,
     * this program will fail to compile or behave unexpectedly.
     */
    int result = add(2, 3);
    result = add2(2, 3);
    result = add3(2, 3);

    // Runtime check to ensure normal execution.
    if (result != 5) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

