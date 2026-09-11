/*
 * FEATURE: C++23 Make declaration order layout mandated
 * SPEC: P1847R4 Make declaration order layout mandated
 * PURPOSE: Verify that non-static data members are laid out in declaration order
 *          even when separated by different access-specifiers.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror declaration_order_layout.cpp
 */

#include <cstddef>
#include <cstdlib>

class Test {
public:
    int first;

private:
    int second;

public:
    int third;

    // Return offset of first member
    std::size_t first_offset() const {
        return reinterpret_cast<const char*>(&first)
             - reinterpret_cast<const char*>(this);
    }

    // Return offset of second member
    std::size_t second_offset() const {
        return reinterpret_cast<const char*>(&second)
             - reinterpret_cast<const char*>(this);
    }

    // Return offset of third member
    std::size_t third_offset() const {
        return reinterpret_cast<const char*>(&third)
             - reinterpret_cast<const char*>(this);
    }
};

int main() {
    // Create test object
    Test obj{};

    // Verify declaration order is preserved
    if (!(obj.first_offset() < obj.second_offset())) {
        return EXIT_FAILURE;
    }

    // Verify declaration order is preserved
    if (!(obj.second_offset() < obj.third_offset())) {
        return EXIT_FAILURE;
    }

    // Test passed
    return EXIT_SUCCESS;
}


