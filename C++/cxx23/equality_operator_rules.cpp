/*
 * FEATURE: C++23 The Equality Operator You Are Looking For
 * SPEC: P2468R2 (DR)
 * PURPOSE: Verify the revised equality operator rewriting rules.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror equality_operator_rules.cpp
 */

#include <cassert>
#include <cstdlib>

struct X {
    int value;

    bool operator==(const X& other) {
        return value == other.value;
    }

    bool operator!=(const X& other) {
        return value != other.value;
    }
};

int main()
{
    X a{1};
    X b{2};
    X c{1};

    assert(a == c);
    assert(!(a == b));

    assert(a != b);
    assert(!(a != c));

    return EXIT_SUCCESS;
}
