#include <assert.h>

#define TRUE        1
#define FALSE       0

#define __TEST_GENERIC_SELECT(ctl_type, assoc_type, ret) { \
        ctl_type expr; \
        assert(_Generic(expr, assoc_type: TRUE, default: FALSE) == ret); \
    }
#define TEST_GENERIC_SELECT(type) \
    __TEST_GENERIC_SELECT(type, type, TRUE) \
    __TEST_GENERIC_SELECT(type, const type, FALSE) \
    __TEST_GENERIC_SELECT(type, volatile type, FALSE) \
    __TEST_GENERIC_SELECT(type, const volatile type, FALSE) \
    __TEST_GENERIC_SELECT(const type, type, FALSE) \
    __TEST_GENERIC_SELECT(const type, const type, TRUE) \
    __TEST_GENERIC_SELECT(const type, volatile type, FALSE) \
    __TEST_GENERIC_SELECT(const type, const volatile type, FALSE) \
    __TEST_GENERIC_SELECT(volatile type, type, FALSE) \
    __TEST_GENERIC_SELECT(volatile type, const type, FALSE) \
    __TEST_GENERIC_SELECT(volatile type, volatile type, TRUE) \
    __TEST_GENERIC_SELECT(volatile type, const volatile type, FALSE) \
    __TEST_GENERIC_SELECT(const volatile type, type, FALSE) \
    __TEST_GENERIC_SELECT(const volatile type, const type, FALSE) \
    __TEST_GENERIC_SELECT(const volatile type, volatile type, FALSE) \
    __TEST_GENERIC_SELECT(const volatile type, const volatile type, TRUE)
    
typedef struct _S { long _; } S;
typedef struct _U { double _; } U;

void test() {
#if !defined (__GNUC__)
    TEST_GENERIC_SELECT(char)
    TEST_GENERIC_SELECT(signed char)
    TEST_GENERIC_SELECT(unsigned char)
    TEST_GENERIC_SELECT(short)
    TEST_GENERIC_SELECT(unsigned short)
    TEST_GENERIC_SELECT(int)
    TEST_GENERIC_SELECT(unsigned int)
    TEST_GENERIC_SELECT(long)
    TEST_GENERIC_SELECT(unsigned long)
    TEST_GENERIC_SELECT(long long)
    TEST_GENERIC_SELECT(unsigned long long)
    TEST_GENERIC_SELECT(float)
    TEST_GENERIC_SELECT(double)
    TEST_GENERIC_SELECT(long double)
    
    TEST_GENERIC_SELECT(void*)
    typedef void(*FnPtrType)(int);
    TEST_GENERIC_SELECT(FnPtrType)
    typedef char(ArrType1)[3];
    typedef char(ArrType2)[2][3];
    typedef char(ArrType3)[2][3][4];
    TEST_GENERIC_SELECT(ArrType1);
    TEST_GENERIC_SELECT(ArrType2);
    TEST_GENERIC_SELECT(ArrType3);
    TEST_GENERIC_SELECT(S);
    TEST_GENERIC_SELECT(U);
#endif
}

int main() {
    test();
}

