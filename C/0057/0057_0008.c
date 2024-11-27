#include <assert.h>

#define ____CONNECT(a, b) a##b
#define __CONNECT(a, b) ____CONNECT(a, b)
#define DEFINE_VARIABLE(align_type, name) \
    char __CONNECT(__1_, __LINE__) = 1; \
    char _Alignas(align_type) name = 2; \
    char __CONNECT(__2_, __LINE__) = 3; \
    char _Alignas(const align_type) name##_c = 4; \
    char __CONNECT(__3_, __LINE__) = 5; \
    char _Alignas(volatile align_type) name##_v = 6; \
    char __CONNECT(__4_, __LINE__) = 7; \
    char _Alignas(const volatile align_type) name##_cv = 8;

DEFINE_VARIABLE(char, c)
DEFINE_VARIABLE(signed char, sc)
DEFINE_VARIABLE(unsigned char, uc)
DEFINE_VARIABLE(short, s)
DEFINE_VARIABLE(unsigned short, us)
DEFINE_VARIABLE(int, i)
DEFINE_VARIABLE(unsigned int, ui)
DEFINE_VARIABLE(long, l)
DEFINE_VARIABLE(unsigned long, ul)
DEFINE_VARIABLE(long long, ll)
DEFINE_VARIABLE(unsigned long long, ull)
DEFINE_VARIABLE(float, f)
DEFINE_VARIABLE(double, d)
DEFINE_VARIABLE(long double, ld)
DEFINE_VARIABLE(float _Complex, fc)
DEFINE_VARIABLE(double _Complex, dc)
DEFINE_VARIABLE(long double _Complex, ldc)
    

DEFINE_VARIABLE(void*, vp)
typedef struct _S { long long _; } S;
typedef union _U { long double _; } U;
DEFINE_VARIABLE(S, _s)
DEFINE_VARIABLE(U, _u)
DEFINE_VARIABLE(char[3], _a1)
DEFINE_VARIABLE(int[3][5], _a2)
DEFINE_VARIABLE(double[3][5][7], _a3)

void test() {
#define TEST_ALIGN(var, align) \
    assert((long)&var % align == 0); \
    assert((long)&var##_c % align == 0); \
    assert((long)&var##_v % align == 0); \
    assert((long)&var##_cv % align == 0);
    
    TEST_ALIGN(c,   _Alignof(char));
    TEST_ALIGN(sc,  _Alignof(signed char));
    TEST_ALIGN(uc,  _Alignof(unsigned char));
    TEST_ALIGN(s,   _Alignof(short));
    TEST_ALIGN(us,  _Alignof(unsigned short));
    TEST_ALIGN(i,   _Alignof(int));
    TEST_ALIGN(ui,  _Alignof(unsigned int));
    TEST_ALIGN(l,   _Alignof(long));
    TEST_ALIGN(ul,  _Alignof(unsigned long));
    TEST_ALIGN(ll,  _Alignof(long long));
    TEST_ALIGN(ull, _Alignof(unsigned long long));
    TEST_ALIGN(f,   _Alignof(float));
    TEST_ALIGN(d,   _Alignof(double));
    TEST_ALIGN(ld,  _Alignof(long double));
    TEST_ALIGN(fc,  _Alignof(float _Complex));
    TEST_ALIGN(dc,  _Alignof(double _Complex));
    TEST_ALIGN(ldc, _Alignof(long double _Complex));
    
    TEST_ALIGN(vp,   _Alignof(void*));
    TEST_ALIGN(_s,   _Alignof(S));
    TEST_ALIGN(_u,   _Alignof(U));
    TEST_ALIGN(_a1,  _Alignof(char[3]));
    TEST_ALIGN(_a2,  _Alignof(int[3][5]));
    TEST_ALIGN(_a3,  _Alignof(double[3][5][7]));
}

int main() {
    test();
}
