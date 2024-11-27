
#include <assert.h>

#define TEST_ALIGN(type, align) \
    assert(_Alignof(type) == (align)); \
    assert(_Alignof(const type) == (align)); \
    assert(_Alignof(volatile type) == (align)); \
    assert(_Alignof(const volatile type) == (align));
    
typedef void* pointer_type;

typedef struct {
    char a;
    double b;
    char _Alignas(32) c;
} struct_type;

typedef union {
    char a;
    double b;
    char _Alignas(32) c;
} union_type;

typedef struct_type array_type[5];

void test() {
    TEST_ALIGN(_Bool,               1);
    TEST_ALIGN(char,                1);
    TEST_ALIGN(signed char,         1);
    TEST_ALIGN(unsigned char,       1);
    TEST_ALIGN(short,               2);
    TEST_ALIGN(unsigned short,      2);
    TEST_ALIGN(int,                 4);
    TEST_ALIGN(unsigned int,        4);
    TEST_ALIGN(long,                8);
    TEST_ALIGN(unsigned long,       8);
    TEST_ALIGN(long long,           8);
    TEST_ALIGN(unsigned long long,  8);
    TEST_ALIGN(float,               4);
    TEST_ALIGN(double,              8);
#ifdef __x86_64__
    TEST_ALIGN(long double,         16);
#else
# warning long double type alignment is not tested on this platform!
#endif

    TEST_ALIGN(pointer_type,        8);
    TEST_ALIGN(struct_type,         32);
    TEST_ALIGN(union_type,          32);
    TEST_ALIGN(array_type,          32);
}

int main() {
    test();
}
