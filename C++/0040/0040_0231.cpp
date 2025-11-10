#include "public2/004.h"

int flag1 = 0, flag2 = 0;
struct X
{
    X() {}
    X(const X&) { assert(flag1++ == 2); assert(flag2++ == 2); }
    X& operator = (const X&)   { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator += (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator -= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator *= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator /= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator %= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator &= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator |= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator ^= (const X&)  { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator >>= (const X&) { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
    X& operator <<= (const X&) { assert(flag1++ == 1); assert(flag2++ == 1); return *this; }
} x;

X &left() { assert(flag1++ == 0); return x; }
X right() { assert(flag2++ == 0); return X(); }

#define TEST_ASSIGMENT(operator) \
    { \
        flag1 = 0, flag2 = 0; \
        X x = (left() operator right()); \
    }

void test()
{
    TEST_ASSIGMENT( =);
    TEST_ASSIGMENT(+=);
    TEST_ASSIGMENT(-=);
    TEST_ASSIGMENT(*=);
    TEST_ASSIGMENT(/=);
    TEST_ASSIGMENT(%=);
    TEST_ASSIGMENT(&=);
    TEST_ASSIGMENT(|=);
    TEST_ASSIGMENT(^=);
    TEST_ASSIGMENT(>>=);
    TEST_ASSIGMENT(<<=);
}

PASS_CASE_MAIN_FUNCTION
