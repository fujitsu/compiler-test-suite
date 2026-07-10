/*
FEATURE: Structured binding extensions
SPEC: P0963R1, C++20 [stmt.if], [stmt.switch], [dcl.struct.bind]
PURPOSE: Verify C++20 structured binding extensions including
         init-statements, references, constexpr evaluation,
         tuple-like customization, arrays, nested bindings,
         lambda interaction, and lifetime behavior.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror structured_binding_extensions.cpp
*/

#include <array>
#include <tuple>
#include <type_traits>
#include <utility>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// -----------------------------------------------------------------------------
// Helper utilities
// -----------------------------------------------------------------------------

constexpr std::pair<int, int> make_pair_values() {
    return {10, 20};
}

// -----------------------------------------------------------------------------
// Custom tuple-like type
// -----------------------------------------------------------------------------

struct Point {
    int x;
    int y;
};

namespace std {

template <>
struct tuple_size<Point> : integral_constant<size_t, 2> {};

template <>
struct tuple_element<0, Point> {
    using type = int;
};

template <>
struct tuple_element<1, Point> {
    using type = int;
};

template <>
struct tuple_element<0, const Point> {
    using type = const int;
};

template <>
struct tuple_element<1, const Point> {
    using type = const int;
};

} // namespace std

// lvalue overload
template <std::size_t I>
constexpr decltype(auto) get(Point& p) noexcept {
    if constexpr (I == 0) {
        return (p.x);
    } else {
        return (p.y);
    }
}

// const lvalue overload
template <std::size_t I>
constexpr decltype(auto) get(const Point& p) noexcept {
    if constexpr (I == 0) {
        return (p.x);
    } else {
        return (p.y);
    }
}

// rvalue overload
template <std::size_t I>
constexpr decltype(auto) get(Point&& p) noexcept {
    if constexpr (I == 0) {
        return std::move(p.x);
    } else {
        return std::move(p.y);
    }
}

// const rvalue overload
template <std::size_t I>
constexpr decltype(auto) get(const Point&& p) noexcept {
    if constexpr (I == 0) {
        return std::move(p.x);
    } else {
        return std::move(p.y);
    }
}

// -----------------------------------------------------------------------------
// Test 1:
// Structured binding in if-init statement.
// -----------------------------------------------------------------------------

bool test_if_init_statement() {
    if (auto [x, y] = make_pair_values(); x == 10 && y == 20) {
        return true;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 2:
// Structured binding in switch-init statement.
// -----------------------------------------------------------------------------

bool test_switch_init_statement() {
    switch (auto [x, y] = make_pair_values(); x + y) {
        case 30:
            return true;
        default:
            return false;
    }
}

// -----------------------------------------------------------------------------
// Test 3:
// Const-qualified structured binding.
// -----------------------------------------------------------------------------

bool test_const_binding() {
    if (const auto [x, y] = make_pair_values(); x < y) {
        return x == 10 && y == 20;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 4:
// Reference structured binding modifies original object.
// -----------------------------------------------------------------------------

bool test_reference_binding() {
    int a = 1;
    int b = 2;

    std::pair<int&, int&> refs(a, b);

    if (auto& [x, y] = refs; true) {
        x = 100;
        y = 200;
    }

    return a == 100 && b == 200;
}

// -----------------------------------------------------------------------------
// Test 5:
// Const reference binding to temporary.
// -----------------------------------------------------------------------------

bool test_const_reference_binding() {
    if (const auto& [x, y] = make_pair_values(); true) {
        return x == 10 && y == 20;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 6:
// Array decomposition.
// -----------------------------------------------------------------------------

bool test_array_decomposition() {
    int values[2] = {5, 6};

    if (auto [x, y] = values; x == 5 && y == 6) {
        return true;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 7:
// Tuple-like custom type.
// -----------------------------------------------------------------------------

bool test_tuple_like_type() {
    Point p{7, 8};

    if (auto [x, y] = p; x == 7 && y == 8) {
        return true;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 8:
// Nested structured bindings.
// -----------------------------------------------------------------------------

bool test_nested_binding() {
    std::pair<std::pair<int, int>, int> value{{1, 2}, 3};

    if (auto [inner, z] = value; z == 3) {
        auto [x, y] = inner;
        return x == 1 && y == 2;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 9:
// Scope isolation.
// -----------------------------------------------------------------------------

bool test_scope_isolation() {
    int x = 999;

    if (auto [y, z] = make_pair_values(); true) {
        if (x != 999) {
            return false;
        }

        return y == 10 && z == 20;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 10:
// Bit-field decomposition.
// -----------------------------------------------------------------------------

struct BitFields {
    unsigned int a : 4;
    unsigned int b : 4;
};

bool test_bitfield_decomposition() {
    BitFields bits{3, 5};

    if (auto [x, y] = bits; x == 3 && y == 5) {
        return true;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 11:
// constexpr structured binding.
// -----------------------------------------------------------------------------

constexpr bool test_constexpr_if() {
    if (auto [x, y] = std::pair<int, int>{3, 4}; x + y == 7) {
        return true;
    }

    return false;
}

static_assert(test_constexpr_if(),
              "constexpr structured binding failed");

// -----------------------------------------------------------------------------
// Test 12:
// Structured binding with std::array.
// -----------------------------------------------------------------------------

bool test_std_array_binding() {
    std::array<int, 2> values{11, 22};

    if (auto [x, y] = values; x == 11 && y == 22) {
        return true;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 13:
// Copy semantics.
// -----------------------------------------------------------------------------

bool test_copy_semantics() {
    std::pair<int, int> p{1, 2};

    if (auto [x, y] = p; true) {
        x = 100;
        y = 200;
    }

    return p.first == 1 && p.second == 2;
}

// -----------------------------------------------------------------------------
// Test 14:
// Lambda capture of structured binding variables.
// -----------------------------------------------------------------------------

bool test_lambda_capture() {
    if (auto [x, y] = make_pair_values(); true) {
        auto lambda = [x, y]() {
            return x + y;
        };

        return lambda() == 30;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 15:
// Lambda reference capture.
// -----------------------------------------------------------------------------

bool test_lambda_reference_capture() {
    int a = 1;
    int b = 2;

    std::pair<int&, int&> refs(a, b);

    if (auto& [x, y] = refs; true) {
        auto lambda = [&x, &y]() {
            x = 10;
            y = 20;
        };

        lambda();
    }

    return a == 10 && b == 20;
}

// -----------------------------------------------------------------------------
// Test 16:
// Lambda init-capture.
// -----------------------------------------------------------------------------

bool test_lambda_init_capture() {
    if (auto [x, y] = make_pair_values(); true) {
        auto lambda = [sum = x + y]() {
            return sum;
        };

        return lambda() == 30;
    }

    return false;
}

// -----------------------------------------------------------------------------
// Test 17:
// constexpr lambda interaction.
// -----------------------------------------------------------------------------

constexpr bool test_constexpr_lambda() {
    if (auto [x, y] = std::pair<int, int>{1, 2}; true) {
        auto lambda = [=]() constexpr {
            return x + y;
        };

        return lambda() == 3;
    }

    return false;
}

static_assert(test_constexpr_lambda(),
              "constexpr lambda capture failed");

// -----------------------------------------------------------------------------
// Main
// -----------------------------------------------------------------------------

int main() {
    if (!test_if_init_statement()) {
        return EXIT_FAILURE;
    }

    if (!test_switch_init_statement()) {
        return EXIT_FAILURE;
    }

    if (!test_const_binding()) {
        return EXIT_FAILURE;
    }

    if (!test_reference_binding()) {
        return EXIT_FAILURE;
    }

    if (!test_const_reference_binding()) {
        return EXIT_FAILURE;
    }

    if (!test_array_decomposition()) {
        return EXIT_FAILURE;
    }

    if (!test_tuple_like_type()) {
        return EXIT_FAILURE;
    }

    if (!test_nested_binding()) {
        return EXIT_FAILURE;
    }

    if (!test_scope_isolation()) {
        return EXIT_FAILURE;
    }

    if (!test_bitfield_decomposition()) {
        return EXIT_FAILURE;
    }

    if (!test_std_array_binding()) {
        return EXIT_FAILURE;
    }

    if (!test_copy_semantics()) {
        return EXIT_FAILURE;
    }

    if (!test_lambda_capture()) {
        return EXIT_FAILURE;
    }

    if (!test_lambda_reference_capture()) {
        return EXIT_FAILURE;
    }

    if (!test_lambda_init_capture()) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
