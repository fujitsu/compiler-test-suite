/*
FEATURE: Class template argument deduction for alias templates
SPEC: P1814R0, C++20 [over.match.class.deduct]
PURPOSE: Verify that class template argument deduction (CTAD) works
         through alias templates and that deduction guides of the
         underlying class template are available through aliases.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror alias_template_ctad.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Define a simple class template.
template <typename T>
struct Box {
    T value;

    explicit Box(T v) : value(v) {}
};

// Define an alias template.
template <typename T>
using AliasBox = Box<T>;

// Verify CTAD through a simple alias template.
bool test_single_parameter_alias_ctad()
{
    // Construct an object without specifying template arguments.
    AliasBox box(42);

    // Verify the deduced type and stored value.
    return std::is_same_v<decltype(box), Box<int>>
        && box.value == 42;
}

// Define a class template with two template parameters.
template <typename T, typename U>
struct PairBox {
    T first;
    U second;

    PairBox(T a, U b) : first(a), second(b) {}
};

// Define an alias template.
template <typename T, typename U>
using AliasPairBox = PairBox<T, U>;

// Verify CTAD through an alias template with multiple parameters.
bool test_multi_parameter_alias_ctad()
{
    // Construct an object without specifying template arguments.
    AliasPairBox pair(10, 3.5);

    // Verify the deduced type and stored values.
    return std::is_same_v<decltype(pair), PairBox<int, double>>
        && pair.first == 10
        && pair.second == 3.5;
}

// Define a class template used to test deduction guides.
template <typename T>
struct GuideBox {
    T value;

    explicit GuideBox(T v)
        : value(v)
    {
    }
};

// Specialization used by the deduction guide.
template <>
struct GuideBox<int> {
    int value;

    explicit GuideBox(int v)
        : value(v)
    {
    }

    explicit GuideBox(const char*)
        : value(123)
    {
    }
};

// Define a deduction guide that changes the deduced type.
GuideBox(const char*) -> GuideBox<int>;

// Define an alias template.
template <typename T>
using AliasGuideBox = GuideBox<T>;

// Verify that deduction guides are available through alias templates.
bool test_alias_ctad_with_deduction_guide()
{
    // The deduction guide should deduce GuideBox<int>.
    AliasGuideBox box("alias-guide");

    // Verify the deduced type and constructed value.
    return std::is_same_v<decltype(box), GuideBox<int>>
        && box.value == 123;
}

// Program entry point.
int main()
{
    // Verify CTAD through a simple alias template.
    if (!test_single_parameter_alias_ctad()) {
        return EXIT_FAILURE;
    }

    // Verify CTAD through a multi-parameter alias template.
    if (!test_multi_parameter_alias_ctad()) {
        return EXIT_FAILURE;
    }

    // Verify CTAD through an alias template using a deduction guide.
    if (!test_alias_ctad_with_deduction_guide()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
