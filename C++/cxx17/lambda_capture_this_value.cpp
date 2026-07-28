/*
FEATURE: C++17 Lambda capture of *this
SPEC: N4659 §7.5.5 [expr.prim.lambda.capture]
PURPOSE: Verify that capturing *this copies the object by value and is independent
         from later modifications of the original object.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror lambda_capture_this_value.cpp
*/

#include <iostream>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

class Sample {
private:
    int value;

public:
    explicit Sample(int v) : value(v) {}

    auto make_lambda_with_this_ptr() {
        return [this]() {
            return value;
        };
    }

    auto make_lambda_with_this_copy() {
        return [*this]() {
            return value;
        };
    }

    void set(int v) {
        value = v;
    }
};

int main() {
    Sample obj(10);

    auto lambda_ptr  = obj.make_lambda_with_this_ptr();   // Captures this as a pointer
    auto lambda_copy = obj.make_lambda_with_this_copy();  // Captures *this by value (C++17 feature)

    obj.set(20);

    int result_ptr  = lambda_ptr();   // Should see updated value (20)
    int result_copy = lambda_copy();  // Should see old value (10)

    if (result_ptr != 20) {
        std::cerr << "Pointer capture test failed\n";
        return EXIT_FAILURE;
    }

    if (result_copy != 10) {
        std::cerr << "Value capture test failed\n";
        return EXIT_FAILURE;
    }

    return EXIT_SUCCESS;
}

