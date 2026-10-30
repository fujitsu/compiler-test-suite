/*
 * FEATURE: C++23 De-deprecating volatile compound operations
 * SPEC: P2327R1 (DR)
 * PURPOSE: Verify that bitwise compound assignment operations on
 *          volatile-qualified objects are accepted.
 * RUN: clang++ -std=c++23 -Wall -Wextra -Werror volatile_compound_ops.cpp
 */

#include <cassert>
#include <cstdlib>

int main()
{
    // unsigned char, alternating low-bit pattern, constant operands
    volatile unsigned char uc = 0x55u;
    uc |= 0x0au;                // 0x55 | 0x0a = 0x5f
    assert(uc == 0x5fu);
    uc &= 0x5fu;                // 0x5f & 0x5f = 0x5f
    assert(uc == 0x5fu);
    uc ^= 0x0fu;                // 0x5f ^ 0x0f = 0x50
    assert(uc == 0x50u);

    // unsigned int, alternating high-bit pattern, variable operands
    volatile unsigned int ui = 0xaau;
    unsigned int ui_mask = 0x0fu;
    ui |= ui_mask;              // 0xaa | 0x0f = 0xaf
    assert(ui == 0xafu);
    ui &= ui_mask;              // 0xaf & 0x0f = 0x0f
    assert(ui == 0x0fu);
    ui ^= ui_mask;              // 0x0f ^ 0x0f = 0x00
    assert(ui == 0x00u);

    // unsigned long, all bits initially clear, volatile operand
    volatile unsigned long ul = 0x00ul;
    volatile unsigned long ul_mask = 0xfful;
    ul |= ul_mask;              // 0x00 | 0xff = 0xff
    assert(ul == 0xfful);
    ul &= ul_mask;              // 0xff & 0xff = 0xff
    assert(ul == 0xfful);
    ul ^= ul_mask;              // 0xff ^ 0xff = 0x00
    assert(ul == 0x00ul);

    return EXIT_SUCCESS;
}
