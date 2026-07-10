/*
FEATURE: Nested namespace definition
SPEC: C++17 Standard (e.g., N4659 §10.3)
PURPOSE: To verify that the C++17 nested namespace definition syntax (e.g., `namespace A::B::C { ... }`) is correctly parsed and compiled by the compiler, and that members defined within such namespaces are accessible as expected.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror nested_namespace_definition.cpp
*/

#include <iostream> // Required for std::cout, std::cerr, and std::endl

// Define a nested namespace using the C++17 syntax.
// This is equivalent to:
// namespace A {
//     namespace B {
//         namespace C {
//             // ...
//         }
//     }
// }
namespace A::B::C {

    // A constant integer variable defined within the innermost namespace.
    const int value = 123;

    // A simple function defined within the innermost namespace
    // that returns the value of value.
    int get_value() {
        return value;
    }

    // Another function to demonstrate usage.
    void print_message() {
        //std::cout << "Message from C: " << value << std::endl;
    }

} // namespace A::B::C

int main() {
    bool overall_success = true; // Flag to track test results

    // Test 1: Direct access to a variable using the fully qualified name.
    //std::cout << "Test 1: Accessing A::B::C::value" << std::endl;
    if (A::B::C::value == 123) {
        //std::cout << "  Passed: value is " << A::B::C::value << std::endl;
    } else {
        std::cerr << "  Failed: value is " << A::B::C::value << ", expected 123." << std::endl;
        overall_success = false;
    }

    // Test 2: Direct access to a function using the fully qualified name.
    //std::cout << "Test 2: Calling A::B::C::get_value()" << std::endl;
    if (A::B::C::get_value() == 123) {
        //std::cout << "  Passed: get_value() returned " << A::B::C::get_value() << std::endl;
    } else {
        std::cerr << "  Failed: get_value() returned " << A::B::C::get_value() << ", expected 123." << std::endl;
        overall_success = false;
    }

    // Test 3: Using a namespace alias for shorter access.
    // This demonstrates that the nested namespace structure is correctly formed
    // and can be aliased.
    //std::cout << "Test 3: Using a namespace alias 'omi'" << std::endl;
    namespace omi = A::B::C;
    if (omi::value == 123) {
        //std::cout << "  Passed: Access via alias 'omi::value' is " << omi::value << std::endl;
    } else {
        std::cerr << "  Failed: Access via alias 'omi::value' is " << omi::value << ", expected 123." << std::endl;
        overall_success = false;
    }
    // Call a function using the alias
    omi::print_message();

    // Final result based on all tests.
    if (overall_success) {
        //std::cout << "\nAll C++17 nested namespace definition tests passed successfully." << std::endl;
        return 0; // Return 0 for success
    } else {
        std::cerr << "\nOne or more C++17 nested namespace definition tests failed." << std::endl;
        return 1; // Return non-zero for failure
    }
}

