/*
FEATURE: Template argument deduction for class templates
SPEC: ISO/IEC 14882:2017 (C++17), §17.8.2 [temp.deduct.guide]
PURPOSE: Verify that class template arguments can be deduced from constructor arguments (CTAD),
         including standard library templates and a user-defined template with a deduction guide.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror class_template_argument_deduction.cpp
*/

#include <utility>
#include <vector>
#include <type_traits>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

/*
 A simple user-defined class template.
*/
template <typename T, typename U>
struct Box {
    T first;
    U second;

    Box(T a, U b) : first(a), second(b) {}
};

/*
 A deduction guide that forces the second template argument to be std::size_t
 when the second constructor argument is an integer literal.
*/
template <typename T>
Box(T, int) -> Box<T, std::size_t>;

int main()
{
    // --- Standard library examples ---

    // CTAD for std::pair
    std::pair p(1, 2.5); // deduced as std::pair<int, double>
    static_assert(std::is_same_v<decltype(p), std::pair<int, double>>,
                  "CTAD failed for std::pair");

    // CTAD for std::vector
    std::vector v{1, 2, 3}; // deduced as std::vector<int>
    static_assert(std::is_same_v<decltype(v), std::vector<int>>,
                  "CTAD failed for std::vector");

    // --- User-defined class template example ---

    // Basic CTAD without an explicit deduction guide
    Box b1(10, 3.14); // deduced as Box<int, double>
    static_assert(std::is_same_v<decltype(b1), Box<int, double>>,
                  "CTAD failed for user-defined template (default deduction)");

    // CTAD with an explicit deduction guide
    Box b2(42, 7); // deduced as Box<int, std::size_t> due to the deduction guide
    static_assert(std::is_same_v<decltype(b2), Box<int, std::size_t>>,
                  "CTAD failed for user-defined template with deduction guide");

    // If all static assertions pass, the test succeeds.
    return EXIT_SUCCESS;
}

