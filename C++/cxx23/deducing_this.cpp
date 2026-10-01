/*
 * FEATURE: C++23 Deducing this
 * SPEC: P0847R7 Deducing this,
 *       P2797R0 Proposed resolution for CWG2692
 * PURPOSE: Verify explicit object parameters, deduced self types,
 *          value category preservation, derived-type deduction,
 *          and explicit object member function pointer behavior.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror deducing_this.cpp
 */

#include <cstdlib>
#include <type_traits>
#include <utility>

struct Counter {
    int value{0};

    // Verify explicit object parameter with mutable access
    void increment(this Counter& self) {
        ++self.value;
    }

    // Verify const explicit object parameter
    int get(this const Counter& self) {
        return self.value;
    }
};

struct Base {
    // Verify derived-type deduction through explicit object parameter
    template <class Self>
    constexpr Self& chain(this Self& self) {
        ++self.base_count;
        return self;
    }

    int base_count{0};
};

struct Derived : Base {
    int derived_count{0};

    // Verify method chaining with deduced derived type
    Derived& touch() {
        ++derived_count;
        return *this;
    }
};

struct QualifierTest {
    // Verify lvalue explicit object parameter
    constexpr int category(this QualifierTest&) {
        return 1;
    }

    // Verify rvalue explicit object parameter
    constexpr int category(this QualifierTest&&) {
        return 2;
    }
};

struct PointerTest {
    int value;

    // Verify explicit object member function representation
    constexpr int get(this PointerTest self) {
        return self.value;
    }
};

int main() {
    // Verify basic explicit object parameter usage
    Counter counter;
    counter.increment();
    counter.increment();

    if (counter.get() != 2) {
        return EXIT_FAILURE;
    }

    // Verify derived-type deduction and chaining
    Derived derived;
    derived.chain().touch();

    if (derived.base_count != 1) {
        return EXIT_FAILURE;
    }

    if (derived.derived_count != 1) {
        return EXIT_FAILURE;
    }

    // Verify return type preserves derived type
    static_assert(
        std::is_same_v<decltype(derived.chain()), Derived&>);

    // Verify value category selection
    QualifierTest q;

    if (q.category() != 1) {
        return EXIT_FAILURE;
    }

    if (std::move(q).category() != 2) {
        return EXIT_FAILURE;
    }

    // Verify compile-time usage
    static_assert(QualifierTest{}.category() == 2);

    // Verify explicit object member function pointer type
    constexpr auto fp = &PointerTest::get;

    static_assert(
        std::is_same_v<
            std::remove_cv_t<decltype(fp)>,
            int (*)(PointerTest)>);

    // Verify invocation through function pointer
    PointerTest pt{42};

    if (fp(pt) != 42) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

