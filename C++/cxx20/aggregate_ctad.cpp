/*
FEATURE: Class template argument deduction for aggregates
SPEC: P1021R4, C++20 [over.match.class.deduct]
PURPOSE: Verify that class template argument deduction (CTAD) works for
         aggregate class templates and that the deduced template arguments
         match the types of the aggregate initializers.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror aggregate_ctad.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// Aggregate template with a single member.
template <typename T>
struct Box {
    T value;
};

// Aggregate template with two members.
template <typename T, typename U>
struct Pair {
    T first;
    U second;
};

// Nested aggregate template.
template <typename T>
struct Wrapper {
    T object;
};

int main() {
    // Verify CTAD for an aggregate with one member.
    Box box{42};

    if (!std::is_same_v<decltype(box), Box<int>>) {
        return EXIT_FAILURE;
    }

    if (box.value != 42) {
        return EXIT_FAILURE;
    }

    // Verify CTAD for an aggregate with multiple members.
    Pair pair{10, 3.5};

    if (!std::is_same_v<decltype(pair), Pair<int, double>>) {
        return EXIT_FAILURE;
    }

    if (pair.first != 10) {
        return EXIT_FAILURE;
    }

    if (pair.second != 3.5) {
        return EXIT_FAILURE;
    }

    // Verify CTAD for a nested aggregate.
    Wrapper wrapped{Box{99}};

    if (!std::is_same_v<decltype(wrapped), Wrapper<Box<int>>>) {
        return EXIT_FAILURE;
    }

    if (wrapped.object.value != 99) {
        return EXIT_FAILURE;
    }

    // Verify CTAD with different fundamental types.
    Pair mixed{'A', true};

    if (!std::is_same_v<decltype(mixed), Pair<char, bool>>) {
        return EXIT_FAILURE;
    }

    if (mixed.first != 'A') {
        return EXIT_FAILURE;
    }

    if (!mixed.second) {
        return EXIT_FAILURE;
    }

    // All checks passed.
    return EXIT_SUCCESS;
}

