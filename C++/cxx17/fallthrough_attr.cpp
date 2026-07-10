/*
FEATURE: [[fallthrough]] attribute
SPEC: N4659 §9.12 (Attributes) / §6.7 (switch statement)
PURPOSE: Verify that the C++17 [[fallthrough]] attribute correctly marks intentional fallthrough and suppresses warnings under -Wall/-Wextra/-Werror.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror fallthrough_attr.cpp
*/

#include <iostream>

#define _FAIL 1

int check_fallthrough_behavior(int x) {
    int value = 0;

    switch (x) {
        case 1:
            value = 10;
            [[fallthrough]];  // Intentional fallthrough to case 2
        case 2:
            value += 5;
            break;

        case 3:
            value = 100;
            // No fallthrough attribute here; break is intentional
            break;

        default:
            value = -1;
            break;
    }

    return value;
}

int main() {
    // Case 1 should fall through to case 2: 10 + 5 = 15
    if (check_fallthrough_behavior(1) != 15) {
        std::cerr << "FAIL: fallthrough from case 1 to case 2 did not work as expected.\n";
        return _FAIL;
    }

    // Case 2 should execute only case 2 logic: value = 5
    if (check_fallthrough_behavior(2) != 5) {
        std::cerr << "FAIL: case 2 did not return expected result.\n";
        return _FAIL;
    }

    // Case 3 should not fall through
    if (check_fallthrough_behavior(3) != 100) {
        std::cerr << "FAIL: case 3 did not return expected result.\n";
        return _FAIL;
    }

    // Default case check
    if (check_fallthrough_behavior(99) != -1) {
        std::cerr << "FAIL: default case did not return expected result.\n";
        return _FAIL;
    }

    return 0; // All tests passed
}

