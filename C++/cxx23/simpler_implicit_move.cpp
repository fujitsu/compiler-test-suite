/***********************************************
FEATURE: Simpler implicit move
SPEC: P2266R3
PURPOSE: Verify that move-eligible objects in return statements are implicitly treated as xvalues, allowing move-only types to be returned without std::move and enabling rvalue reference returns from id-expressions.
RUN: clang++ -std=c++23 -Wall -Wextra -Werror simpler_implicit_move.cpp
***********************************************/

#include <cstdlib>
#include <type_traits>
#include <utility>

struct MoveOnly {
    int value;

    explicit MoveOnly(int v) : value(v) {}

    MoveOnly(const MoveOnly&) = delete;
    MoveOnly& operator=(const MoveOnly&) = delete;

    MoveOnly(MoveOnly&& other) noexcept : value(other.value) {
        other.value = -1;
    }

    MoveOnly& operator=(MoveOnly&& other) noexcept {
        if (this != &other) {
            value = other.value;
            other.value = -1;
        }
        return *this;
    }
};

// Return a local move-only object without std::move.
MoveOnly make_move_only(int value) {
    MoveOnly local(value);
    return local;
}

// Return an rvalue reference parameter.
MoveOnly&& forward_rvalue(MoveOnly&& object) {
    return object;
}

// Return a parenthesized rvalue reference parameter.
MoveOnly&& forward_parenthesized_rvalue(MoveOnly&& object) {
    return (object);
}

// Return through decltype(auto).
decltype(auto) forward_decltype_auto(MoveOnly&& object) {
    return (object);
}

static_assert(
    std::is_same_v<
        decltype(forward_decltype_auto(std::declval<MoveOnly&&>())),
        MoveOnly&&>);

int main() {
    // Verify implicit move from a local move-only object.
    MoveOnly object1 = make_move_only(10);

    if (object1.value != 10) {
        return EXIT_FAILURE;
    }

    // Verify return of an rvalue reference parameter.
    MoveOnly object2(20);
    MoveOnly&& ref2 = forward_rvalue(std::move(object2));

    if (&ref2 != &object2 || ref2.value != 20) {
        return EXIT_FAILURE;
    }

    // Verify return of a parenthesized rvalue reference parameter.
    MoveOnly object3(30);
    MoveOnly&& ref3 = forward_parenthesized_rvalue(std::move(object3));

    if (&ref3 != &object3 || ref3.value != 30) {
        return EXIT_FAILURE;
    }

    // Verify decltype(auto) deduction from a move-eligible expression.
    MoveOnly object4(40);
    MoveOnly&& ref4 = forward_decltype_auto(std::move(object4));

    if (&ref4 != &object4 || ref4.value != 40) {
        return EXIT_FAILURE;
    }

    // Verify that the returned reference can be used for move construction.
    MoveOnly source(50);
    MoveOnly destination(forward_rvalue(std::move(source)));

    if (destination.value != 50 || source.value != -1) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

