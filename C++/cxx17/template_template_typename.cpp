/* FEATURE: typename in a template template parameter

SPEC: ISO/IEC 14882:2017 (C++17) [temp.param]
PURPOSE: Verify that 'typename' is allowed before a template template parameter in C++17,
         as introduced by the C++17 standard. Before C++17, only 'class' was permitted
         in this context.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror template_template_typename.cpp
*/

#include <type_traits>

// A primary template taking a type parameter
template <typename T>
struct Wrapper {
    using type = T;
};

// A template that accepts a template template parameter
// using 'typename' instead of 'class' (C++17 feature)
template <template <typename> typename Container>
struct Tester {
    // Instantiate the container with a simple type
    using inner = typename Container<int>::type;

    static constexpr bool value = std::is_same<inner, int>::value;
};

int main() {
    // If the compiler accepts the syntax and the test passes, return 0.
    return Tester<Wrapper>::value ? 0 : 1;
}

