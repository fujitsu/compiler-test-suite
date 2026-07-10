/*
FEATURE: ADL and function templates that are not visible
SPEC: C++20 [basic.lookup.argdep] (Argument-dependent lookup), [temp.friend]
PURPOSE: Verify that a function template that is not visible by ordinary unqualified lookup
         can still be found via ADL when declared as a friend inside a class.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror adl_hidden_function_templates.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

namespace ns {

struct tag {
    int value;

    // Friend function template defined inside the class.
    // It is not visible by ordinary unqualified lookup at namespace scope,
    // but should be found via ADL.
    template <typename T>
    friend int adl_function(const tag& t, const T& x) {
        return t.value + static_cast<int>(x);
    }
};

} // namespace ns

// A fallback overload in global namespace to ensure that
// ADL actually selects the correct function.
int adl_function(...) {
    return -1;
}

int main() {
    ns::tag t{10};

    // This call relies on ADL to find the friend function template
    // defined inside ns::tag. The name is not qualified and there
    // is no visible declaration at namespace scope in ns.
    int result = adl_function(t, 5);

    // If ADL works correctly, the friend function template is selected,
    // and result should be 15. Otherwise, the fallback overload is used.
    if (result != 15) {
        return EXIT_FAILURE;
    }

    // Additional compile-time verification that the selected overload
    // has the expected return type.
    static_assert(std::is_same_v<decltype(adl_function(t, 1)), int>,
                  "Unexpected return type from ADL-selected function");

    return EXIT_SUCCESS;
}

