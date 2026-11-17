/*
 * FEATURE: C++23 P2280R4 (DR) "Using unknown pointers and references in constant expressions"
 * SPEC: P2280R4
 * PURPOSE: Verify that unknown references can be used in constant expressions without accessing the referenced value.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror constexpr_unknown_pointer.cpp
 */

#include <cstdlib>
#include <cstddef>

template <typename T, std::size_t N>
constexpr std::size_t array_size(T (&)[N])
{
    return N;
}

// Verify the C++23 behavior for an unknown reference.
// 'param' itself is not usable as a constant expression, but its array bound
// can be obtained without accessing any element through the reference.
constexpr bool test_unknown_reference(const int (&param)[3])
{
    constexpr std::size_t size = array_size(param);
    return size == 3;
}

// Also verify the ordinary case where the referenced object is known during
// constant evaluation.
constexpr bool test_known_reference()
{
    const int array[3] = {1, 2, 3};
    return array_size(array) == 3;
}

constexpr int values[3] = {1, 2, 3};

static_assert(test_unknown_reference(values));
static_assert(test_known_reference());

int main()
{
    const int runtime_values[3] = {1, 2, 3};

    if (!test_unknown_reference(runtime_values))
        return EXIT_FAILURE;

    return EXIT_SUCCESS;
}

