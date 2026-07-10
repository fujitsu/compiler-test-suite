/*
FEATURE: C++20 Consistent comparison (operator<=>, three-way comparison)
SPEC: N4861 §11.10 [class.compare], §7.6.9 [expr.spaceship]
PURPOSE: Verify strong_ordering, weak_ordering, and partial_ordering
         behavior in a single integrated test. Confirm automatic
         relational operator generation and correct ordering categories.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror three_way_comparison.cpp
*/

#include <compare>
#include <string>
#include <cctype>
#include <algorithm>
#include <limits>
#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// ------------------------------------------------------------
// 1. strong_ordering (total ordering)
// ------------------------------------------------------------
struct StrongType {
    int x;
    int y;

    auto operator<=>(const StrongType&) const = default;
};

// ------------------------------------------------------------
// 2. weak_ordering (case-insensitive comparison)
// ------------------------------------------------------------
struct WeakType {
    std::string value;

    static char lower_char(char c) {
        return static_cast<char>(std::tolower(static_cast<unsigned char>(c)));
    }

    std::weak_ordering operator<=>(const WeakType& other) const {
        const std::size_t n = std::min(value.size(), other.value.size());

        for (std::size_t i = 0; i < n; ++i) {
            char a = lower_char(value[i]);
            char b = lower_char(other.value[i]);
            if (a < b) return std::weak_ordering::less;
            if (a > b) return std::weak_ordering::greater;
        }

        if (value.size() < other.value.size())
            return std::weak_ordering::less;
        if (value.size() > other.value.size())
            return std::weak_ordering::greater;

        return std::weak_ordering::equivalent;
    }

    bool operator==(const WeakType&) const = default;
};

// ------------------------------------------------------------
// 3. partial_ordering (floating point / NaN)
// ------------------------------------------------------------
struct PartialType {
    double value;

    std::partial_ordering operator<=>(const PartialType& other) const {
        return value <=> other.value;
    }

    bool operator==(const PartialType&) const = default;
};

// ------------------------------------------------------------
// Compile-time category verification
// ------------------------------------------------------------
static_assert(std::is_same_v<
    decltype(std::declval<StrongType>() <=> std::declval<StrongType>()),
    std::strong_ordering>);

static_assert(std::is_same_v<
    decltype(std::declval<WeakType>() <=> std::declval<WeakType>()),
    std::weak_ordering>);

static_assert(std::is_same_v<
    decltype(std::declval<PartialType>() <=> std::declval<PartialType>()),
    std::partial_ordering>);

// ------------------------------------------------------------
// Main runtime verification
// ------------------------------------------------------------
int main() {

    // ---- strong_ordering tests ----
    StrongType s1{1, 2};
    StrongType s2{1, 3};
    StrongType s3{1, 2};

    if (!(s1 < s2)) return EXIT_FAILURE;
    if (!(s2 > s1)) return EXIT_FAILURE;
    if (!(s1 == s3)) return EXIT_FAILURE;
    if (s1 != s3) return EXIT_FAILURE;

    auto strong_cmp = (s1 <=> s2);
    if (!(strong_cmp < 0)) return EXIT_FAILURE;

    // ---- weak_ordering tests ----
    WeakType w1{"abc"};
    WeakType w2{"ABC"};
    WeakType w3{"abd"};

    // Equality is case-sensitive → should be false
    if (w1 == w2) return EXIT_FAILURE;
    auto weak_cmp_eq = (w1 <=> w2);
    if (!(weak_cmp_eq == 0)) return EXIT_FAILURE; // equivalent in ordering sense

    if (!(w1 < w3)) return EXIT_FAILURE;
    if (!(w3 > w1)) return EXIT_FAILURE;

    // ---- partial_ordering tests ----
    PartialType p1{1.0};
    PartialType p2{2.0};
    PartialType pnan{std::numeric_limits<double>::quiet_NaN()};

    if (!(p1 < p2)) return EXIT_FAILURE;
    if (!(p2 > p1)) return EXIT_FAILURE;

    auto partial_cmp = (pnan <=> p1);
    if (partial_cmp != std::partial_ordering::unordered) return EXIT_FAILURE;

    return EXIT_SUCCESS; // success
}
