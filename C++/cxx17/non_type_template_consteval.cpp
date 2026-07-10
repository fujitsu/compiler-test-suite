// non_type_template_consteval.cpp
/*
FEATURE: Allow constant evaluation for all non-type template arguments
SPEC: ISO C++17 (ISO/IEC 14882:2017), non-type template argument constant-evaluation rules (see example reference: N4268 §14.3)
PURPOSE: Verify that values produced by constexpr (integral expressions, addresses of objects/functions with appropriate linkage)
         can be used as non-type template arguments and that templates instantiate and behave as expected.
RUN: clang++ -std=c++17 -Wall -Wextra -Werror non_type_template_consteval.cpp
*/

#include <cstddef> // for std::size_t

#define TEST_INT_VALUE 7
#define TEST_FUNC_RETVALUE 5
#define TEST_OBJPTR_VALUE 10

// Test 1: integral value produced by a constexpr function used as a non-type template argument.
template<int N>
struct IntNTTP {
    static constexpr int value = N;
};

constexpr int make_int() { return 3 + 4; } // constexpr evaluation -> TEST_INT_VALUE
using IntInst = IntNTTP<make_int()>;

// Test 2: pointer-to-function used as a non-type template argument.
constexpr int fn() { return TEST_FUNC_RETVALUE; }

template<int (*F)()>
struct FuncPtrNTTP {
    static constexpr int call() { return F(); }
};

using FuncInst = FuncPtrNTTP<&fn>;

// Test 3: pointer-to-object used as a non-type template argument.
// The object must have appropriate linkage to be a constant expression for an address.
// Declare with external linkage and define in the same translation unit.
extern const int obj; // declaration with external linkage
const int obj = TEST_OBJPTR_VALUE;   // definition

template<const int* P>
struct ObjPtrNTTP {
    static constexpr int value = *P;
};

using ObjInst = ObjPtrNTTP<&obj>;

// Fallback runtime checks: if compilation succeeds (feature supported by the compiler),
// the program will run and return 0 on success, non-zero on failure.
int main() {
    // Perform runtime checks that mirror the compile-time expectations.
    bool ok = true;

    // Check IntNTTP
    if (IntInst::value != TEST_INT_VALUE) ok = false;

    // Check FuncPtrNTTP
    if (FuncInst::call() != TEST_FUNC_RETVALUE) ok = false;

    // Check ObjPtrNTTP
    if (ObjInst::value != TEST_OBJPTR_VALUE) ok = false;

    return ok ? 0 : 1;
}

