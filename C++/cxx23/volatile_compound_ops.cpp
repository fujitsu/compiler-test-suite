/*
 * FEATURE: De-deprecating volatile compound operations
 * SPEC: P2327R1 (DR)
 * PURPOSE: Verify that bitwise compound assignment operations on volatile
 *          objects are accepted without deprecation warnings in C++23.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror volatile_compound_ops.cpp
 */

#include <cassert>

int main()
{
    volatile unsigned int value = 0x0Fu;

    value |= 0x30u;
    assert(value == 0x3Fu);

    value &= 0x3Cu;
    assert(value == 0x3Cu);

    value ^= 0x0Cu;
    assert(value == 0x30u);

    return 0;
}

