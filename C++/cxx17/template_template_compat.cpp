/*
FEATURE: Matching template template parameters to compatible arguments
SPEC: ISO/IEC 14882:2017 (C++17), based on CWG/P0522R0
PURPOSE: Verify that a template template parameter can accept a compatible
         class template that has additional defaulted template parameters.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror template_template_compat.cpp
*/

#include <type_traits>
#include <vector>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A template that expects a template with at least one type parameter.
template <template <typename> class Container>
struct Wrapper {
    using type = Container<int>;
};

// std::vector has two template parameters:
//   template <class T, class Allocator = std::allocator<T>>
// In C++17, it is compatible with template <typename> class Container.
using WrappedVector = Wrapper<std::vector>::type;

int main() {
    // Verify that the wrapped type is std::vector<int>.
    if (!std::is_same<WrappedVector, std::vector<int>>::value) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

