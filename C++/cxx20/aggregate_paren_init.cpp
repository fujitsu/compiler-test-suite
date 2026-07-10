/*
FEATURE: Parenthesized initialization of aggregates
SPEC: P0960R3, C++20 [dcl.init.aggr]
PURPOSE: Verify C++20 parenthesized initialization of aggregates across
         scalar members, arrays, nested aggregates, references, unions,
         inheritance, default member initializers, constexpr evaluation,
         and template-dependent contexts. Intended as a compiler-quality
         regression test for LLVM/Clang.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror aggregate_paren_init.cpp
*/

#include <type_traits>
#include <utility>
#include <cstddef>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// Aggregate definitions
// ------------------------------------------------------------

struct Point {
    int x;
    int y;
};

struct Config {
    int width;
    int height = 480;
};

struct Inner {
    int value;
};

struct Outer {
    Inner inner;
    int flag;
};

struct Buffer {
    int data[3];
};

struct Mixed {
    int i;
    double d;
    char c;
};

struct RefHolder {
    const int& ref;
};

struct Base {
    int b;
};

struct Derived : Base {
    int d;
};

union IntOrChar {
    int i;
    char c;
};

struct UnionHolder {
    IntOrChar u;
};

struct NestedArray {
    int m[2][2];
};

struct DefaultNested {
    Point p{1, 2};
    int z = 9;
};

template <class T>
struct Holder {
    T value;
};

template <class T>
constexpr bool check_template_paren_init(T v)
{
    Holder<T> h(v);
    return h.value == v;
}

// ------------------------------------------------------------
// constexpr tests
// ------------------------------------------------------------

constexpr bool constexpr_basic()
{
    Point p(3, 4);
    return p.x == 3 && p.y == 4;
}

constexpr bool constexpr_nested()
{
    Outer o(Inner(7), 8);
    return o.inner.value == 7 && o.flag == 8;
}

constexpr bool constexpr_array()
{
    Buffer b({10, 20, 30});
    return b.data[0] == 10 &&
           b.data[1] == 20 &&
           b.data[2] == 30;
}

constexpr bool constexpr_default_init()
{
    Config c(100);
    return c.width == 100 && c.height == 480;
}

// ------------------------------------------------------------
// Compile-time assertions
// ------------------------------------------------------------

static_assert(std::is_aggregate_v<Point>);
static_assert(std::is_aggregate_v<Config>);
static_assert(std::is_aggregate_v<Outer>);
static_assert(std::is_aggregate_v<Buffer>);
static_assert(std::is_aggregate_v<Derived>);
static_assert(std::is_aggregate_v<Holder<int>>);

static_assert(constexpr_basic());
static_assert(constexpr_nested());
static_assert(constexpr_array());
static_assert(constexpr_default_init());

static_assert(check_template_paren_init(42));
static_assert(check_template_paren_init('x'));

// Verify narrowing distinction:
// braces would reject {3.5}, but parentheses must allow it.
constexpr Mixed narrowing_ok(1, 3.5, 'a');
static_assert(narrowing_ok.d == 3.5);

// ------------------------------------------------------------
// Runtime verification
// ------------------------------------------------------------

int main()
{
    // --------------------------------------------------------
    // Test 1: basic aggregate
    // --------------------------------------------------------
    Point p(10, 20);

    if (p.x != 10) return EXIT_FAILURE;
    if (p.y != 20) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 2: default member initializer
    // --------------------------------------------------------
    Config cfg(640);

    if (cfg.width != 640) return EXIT_FAILURE;
    if (cfg.height != 480) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 3: nested aggregate
    // --------------------------------------------------------
    Outer o(Inner(42), 1);

    if (o.inner.value != 42) return EXIT_FAILURE;
    if (o.flag != 1) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 4: array member
    // --------------------------------------------------------
    Buffer buf({1, 2, 3});

    if (buf.data[0] != 1) return EXIT_FAILURE;
    if (buf.data[1] != 2) return EXIT_FAILURE;
    if (buf.data[2] != 3) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 5: mixed scalar types
    // --------------------------------------------------------
    Mixed m(7, 2.5, 'Z');

    if (m.i != 7) return EXIT_FAILURE;
    if (m.d != 2.5) return EXIT_FAILURE;
    if (m.c != 'Z') return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 6: reference member binding
    // --------------------------------------------------------
    int x = 99;
    RefHolder rh(x);

    if (rh.ref != 99) return EXIT_FAILURE;

    x = 123;

    if (rh.ref != 123) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 7: aggregate inheritance
    // --------------------------------------------------------
    Derived d(Base(5), 6);

    if (d.b != 5) return EXIT_FAILURE;
    if (d.d != 6) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 8: union member
    // --------------------------------------------------------
    UnionHolder uh(IntOrChar(77));

    if (uh.u.i != 77) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 9: nested array
    // --------------------------------------------------------
    NestedArray na({{1, 2}, {3, 4}});

    if (na.m[0][0] != 1) return EXIT_FAILURE;
    if (na.m[0][1] != 2) return EXIT_FAILURE;
    if (na.m[1][0] != 3) return EXIT_FAILURE;
    if (na.m[1][1] != 4) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 10: default nested aggregate members
    // --------------------------------------------------------
    DefaultNested dn{};

    if (dn.p.x != 1) return EXIT_FAILURE;
    if (dn.p.y != 2) return EXIT_FAILURE;
    if (dn.z != 9) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Test 11: template aggregate
    // --------------------------------------------------------
    Holder<long> hl(555);

    if (hl.value != 555) return EXIT_FAILURE;

    // --------------------------------------------------------
    // Success
    // --------------------------------------------------------
    return EXIT_SUCCESS;
}
