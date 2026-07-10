/*
FEATURE: Default member initializers for bit-fields
SPEC: ISO/IEC 14882:2020 (C++20) §11.4.9 [class.bit]
PURPOSE: Verify that default member initializers are correctly applied to bit-fields
         of various integral types (unsigned, signed, bool, char, short, long,
         long long), including mixed layouts and constructor overrides.
RUN: clang++ -std=c++20 -Wall -Wextra -Werror bitfield_default_member_initializer.cpp
*/

#include <cstdint>
#include <cstdlib>  // for EXIT_SUCCESS / EXIT_FAILURE

int operation();

/*
 * Basic unsigned bit-field patterns:
 * - 1-bit flags
 * - Multi-bit fields
 * - Maximum value
 * - Reserved bits
 */
struct UnsignedFlags {
    unsigned enabled  : 1 = 1;
    unsigned error    : 1 = 0;
    unsigned mode     : 2 = 2;
    unsigned mask     : 3 = 7;
    unsigned reserved : 1 = 0;
};

/*
 * Signed and bool bit-fields
 */
struct SignedAndBool {
    signed int offset : 4 = -1;  // range: -8 .. 7
    signed int delta  : 3 = -3;  // range: -4 .. 3
    bool ready        : 1 = true;
    bool failed       : 1 = false;
};

/*
 * char-based bit-fields (explicitly signed/unsigned)
 */
struct CharFields {
    signed char   sc : 3 = -1;  // range: -4 .. 3
    unsigned char uc : 3 = 5;   // range: 0 .. 7
};

/*
 * short / long / long long based bit-fields
 * Bit widths are intentionally small to avoid ABI-dependent limits.
 */
struct WideIntegralFields {
    unsigned short      us  : 4 = 9;
    unsigned long       ul  : 5 = 17;
    unsigned long long  ull : 6 = 33;
};

/*
 * Mixed normal members and bit-fields,
 * including constructor override.
 */
struct Mixed {
    unsigned level : 3 = 1;
    int count = 42;

    Mixed() = default;
    explicit Mixed(unsigned v) : level(v) {}
};

/*
 * Register / protocol style layout
 */
struct ControlRegister {
    unsigned enable   : 1 = 0;
    unsigned mode     : 2 = 1;
    unsigned irq      : 1 = 0;
    unsigned reserved : 4 = 0;
};

int main() {
    // UnsignedFlags verification
    UnsignedFlags uf{};
    if (uf.enabled != 1)  return EXIT_FAILURE;
    if (uf.error != 0)    return EXIT_FAILURE;
    if (uf.mode != 2)     return EXIT_FAILURE;
    if (uf.mask != 7)     return EXIT_FAILURE;
    if (uf.reserved != 0) return EXIT_FAILURE;

    // SignedAndBool verification
    SignedAndBool sb{};
    if (sb.offset != -1)  return EXIT_FAILURE;
    if (sb.delta != -3)   return EXIT_FAILURE;
    if (!sb.ready)        return EXIT_FAILURE;
    if (sb.failed)        return EXIT_FAILURE;

    // CharFields verification
    CharFields cf{};
    if (cf.sc != -1) return EXIT_FAILURE;
    if (cf.uc != 5)  return EXIT_FAILURE;

    // WideIntegralFields verification
    WideIntegralFields wf{};
    if (wf.us != 9)   return EXIT_FAILURE;
    if (wf.ul != 17)  return EXIT_FAILURE;
    if (wf.ull != 33) return EXIT_FAILURE;

    // Mixed default initialization
    Mixed m1{};
    if (m1.level != 1) return EXIT_FAILURE;
    if (m1.count != 42) return EXIT_FAILURE;

    // Mixed constructor override
    Mixed m2{3};
    if (m2.level != 3) return EXIT_FAILURE;

    // ControlRegister verification
    ControlRegister cr{};
    if (cr.enable != 0)   return EXIT_FAILURE;
    if (cr.mode != 1)     return EXIT_FAILURE;
    if (cr.irq != 0)      return EXIT_FAILURE;
    if (cr.reserved != 0) return EXIT_FAILURE;

    if (operation()) return EXIT_FAILURE;

    // All checks passed
    return EXIT_SUCCESS;
}

/*
 * Bit-fields with default member initializers.
 * Values are chosen to be safely within each bit-width.
 */
struct Bits {
    unsigned a : 2 = 1;  // range: 0..3
    unsigned b : 3 = 4;  // range: 0..7
};

struct SignedBits {
    signed int s : 3 = -2; // range: -4..3
};

struct Mixed2 {
    unsigned flag : 1 = 1;
    unsigned cnt  : 3 = 3;
    bool valid    : 1 = true;
};

int operation() {
    // ------------------------------------------------------------
    // 1. Verify default member initializers
    // ------------------------------------------------------------
    Bits x{};
    if (x.a != 1) return EXIT_FAILURE;
    if (x.b != 4) return EXIT_FAILURE;

    SignedBits sb{};
    if (sb.s != -2) return EXIT_FAILURE;

    Mixed2 mm{};
    if (mm.flag != 1)  return EXIT_FAILURE;
    if (mm.cnt != 3)   return EXIT_FAILURE;
    if (!mm.valid)     return EXIT_FAILURE;

    // ------------------------------------------------------------
    // 2. Arithmetic operations
    // ------------------------------------------------------------
    unsigned sum = x.a + x.b; // integer promotion
    if (sum != 5) return EXIT_FAILURE;

    x.b = x.b + 2; // 4 + 2 = 6
    if (x.b != 6) return EXIT_FAILURE;

    // ------------------------------------------------------------
    // 3. Increment and truncation
    // ------------------------------------------------------------
    x.a = 3;
    ++x.a; // 3 + 1 = 4 -> truncated to 2 bits -> 0
    if (x.a != 0) return EXIT_FAILURE;

    mm.cnt++; // 3 + 1 = 4
    if (mm.cnt != 4) return EXIT_FAILURE;

    // ------------------------------------------------------------
    // 4. Compound assignment and bitwise operations
    // ------------------------------------------------------------
    x.b = 6;
    x.b += 3; // 6 + 3 = 9 -> truncated to 3 bits -> 1
    if (x.b != 1) return EXIT_FAILURE;

    unsigned mask = x.b & 1;
    if (mask != 1) return EXIT_FAILURE;

    // ------------------------------------------------------------
    // 5. Logical operations in conditions
    // ------------------------------------------------------------
    if (!(mm.flag && mm.valid)) return EXIT_FAILURE;

    mm.flag = 0;
    if (mm.flag || !mm.valid) return EXIT_FAILURE;

    // ------------------------------------------------------------
    // 6. Signed bit-field arithmetic and comparison
    // ------------------------------------------------------------
    int v = sb.s + 3; // -2 + 3 = 1
    if (v != 1) return EXIT_FAILURE;

    sb.s--; // -2 - 1 = -3
    if (sb.s != -3) return EXIT_FAILURE;

    if (sb.s >= 0) return EXIT_FAILURE;

    // ------------------------------------------------------------
    // All checks passed
    // ------------------------------------------------------------
    return EXIT_SUCCESS;
}
