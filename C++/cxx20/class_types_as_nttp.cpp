/*
FEATURE: Class types as non-type template parameters
SPEC: C++20 [temp.param] / P0732R2
PURPOSE: Verify that structural class types can be used as non-type template parameters
RUN: clang++ -std=c++20 -Wall -Wextra -Werror class_types_as_nttp.cpp
*/

#include <type_traits>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

// A structural type (all members public, no mutable, no base classes, etc.)
struct Point {
    int x;
    int y;

    // Required for NTTP: constexpr equality
    constexpr bool operator==(const Point&) const = default;
};

// Another structural type with different layout
struct Config {
    bool flag;
    int value;

    constexpr bool operator==(const Config&) const = default;
};

// Template taking class-type NTTP
template <Point P>
struct PointHolder {
    static constexpr int sum = P.x + P.y;
};

// Template taking another class-type NTTP
template <Config C>
struct ConfigHolder {
    static constexpr int computed = C.flag ? C.value : -C.value;
};

// Use constexpr objects as NTTP arguments
constexpr Point p1{1, 2};
constexpr Point p2{3, 4};

constexpr Config c1{true, 10};
constexpr Config c2{false, 10};

// Distinct template instantiations
using PH1 = PointHolder<p1>;
using PH2 = PointHolder<p2>;

using CH1 = ConfigHolder<c1>;
using CH2 = ConfigHolder<c2>;

int main() {
    // Verify different NTTP values produce different results
    if (PH1::sum != 3) return EXIT_FAILURE;
    if (PH2::sum != 7) return EXIT_FAILURE;

    if (CH1::computed != 10) return EXIT_FAILURE;
    if (CH2::computed != -10) return EXIT_FAILURE;

    // Type distinction check
    if (std::is_same_v<PH1, PH2>) return EXIT_FAILURE;
    if (std::is_same_v<CH1, CH2>) return EXIT_FAILURE;

    return EXIT_SUCCESS;
}

