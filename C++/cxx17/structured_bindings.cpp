/*
FEATURE: Structured bindings
SPEC: ISO/IEC 14882:2017 (C++17) §9.6 [dcl.struct.bind]
PURPOSE: Verify that structured bindings correctly decompose arrays, std::pair,
         std::tuple, and aggregate structures when compiled with C++17.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror structured_bindings.cpp
*/

#include <tuple>
#include <utility>
#include <array>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE
#include <cmath>    // for std::fabs

struct Point {
    int x;
    int y;
};

// Helper for floating-point comparison
bool almost_equal(double x, double y, double eps = 1e-12) {
    return std::fabs(x - y) <= eps;
}

int main()
{
    // 1. Structured binding with a built-in array
    int arr[2] = {1, 2};
    auto [a, b] = arr;
    if (a != 1 || b != 2) {
        return EXIT_FAILURE;
    }

    // 2. Structured binding with std::pair
    std::pair<int, int> p{3, 4};
    auto [c, d] = p;
    if (c != 3 || d != 4) {
        return EXIT_FAILURE;
    }
    std::pair<int,double> p2{3, 4.5};
    auto [cc, dd] = p2;
    if (cc != 3 || !almost_equal(dd, 4.5)) {
        return EXIT_FAILURE;
    }

    // 3. Structured binding with std::tuple
    std::tuple<int, int, int> t{5, 6, 7};
    auto [e, f, g] = t;
    if (e != 5 || f != 6 || g != 7) {
        return EXIT_FAILURE;
    }
    std::tuple<int, double, char> t2{5, 6.5, '7'};
    auto [ee, ff, gg] = t2;
    if (ee != 5 || !almost_equal(ff, 6.5) || gg != '7') {
        return EXIT_FAILURE;
    }

    // 4. Structured binding with an aggregate type
    Point pt{8, 9};
    auto [x, y] = pt;
    if (x != 8 || y != 9) {
        return EXIT_FAILURE;
    }

    // All structured binding tests passed
    return EXIT_SUCCESS;
}

