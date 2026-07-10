/*
FEATURE: Allow lambda-capture [=, this]
SPEC: ISO/IEC 14882:2020 (C++20) §7.5.5 [expr.prim.lambda.capture]
PURPOSE: Verify that a lambda can use default copy capture [=] together
         with an explicit this capture, and that both captured outer
         variables and class members are accessible as intended.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror lambda_capture_equals_this.cpp
*/

#include <cassert>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

class Counter {
public:
    explicit Counter(int v) : value(v) {}

    int run(int increment) const {
        int local = increment;

        // C++20 allows combining [=] with explicit this capture.
        auto lambda = [=, this]() {
            // 'local' is captured by value via [=]
            // 'value' is accessed through explicit 'this'
            return value + local;
        };

        return lambda();
    }

private:
    int value;
};

int main() {
    Counter c(10);

    int result = c.run(5);

    // Expected: 10 (member value) + 5 (local copy)
    if (result != 15) {
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}
