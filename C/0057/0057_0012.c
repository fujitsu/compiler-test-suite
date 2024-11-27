
#include <assert.h>

#define TEST_ARRAY_TYPE_ALIGN(elem_type) \
    assert(_Alignof(elem_type[3]) == (_Alignof(elem_type))); \
    assert(_Alignof(const elem_type[5]) == (_Alignof(elem_type))); \
    assert(_Alignof(volatile elem_type[7]) == (_Alignof(elem_type))); \
    assert(_Alignof(const volatile elem_type[9]) == (_Alignof(elem_type)));
    
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
    TEST_ARRAY_TYPE_ALIGN(_Bool);
    TEST_ARRAY_TYPE_ALIGN(char);
    TEST_ARRAY_TYPE_ALIGN(signed char);
    TEST_ARRAY_TYPE_ALIGN(unsigned char);
    TEST_ARRAY_TYPE_ALIGN(short);
    TEST_ARRAY_TYPE_ALIGN(unsigned short);
    TEST_ARRAY_TYPE_ALIGN(int);
    TEST_ARRAY_TYPE_ALIGN(unsigned int);
    TEST_ARRAY_TYPE_ALIGN(long);
    TEST_ARRAY_TYPE_ALIGN(unsigned long);
    TEST_ARRAY_TYPE_ALIGN(long long);
    TEST_ARRAY_TYPE_ALIGN(unsigned long long);
    TEST_ARRAY_TYPE_ALIGN(float);
    TEST_ARRAY_TYPE_ALIGN(double);
    TEST_ARRAY_TYPE_ALIGN(long double);
    TEST_ARRAY_TYPE_ALIGN(pointer_type);
    TEST_ARRAY_TYPE_ALIGN(struct_type);
    TEST_ARRAY_TYPE_ALIGN(union_type);
    TEST_ARRAY_TYPE_ALIGN(array_type);
}

int main() {
    test();
}
