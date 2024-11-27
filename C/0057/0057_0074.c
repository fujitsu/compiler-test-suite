#define REDEFINE_TYPEDEF(type, alias) \
    typedef type alias; \
    typedef type alias; \
    typedef type alias; \
    
#define REDEFINE_TYPEDEF_CV(type, alias) \
    REDEFINE_TYPEDEF(type, alias) \
    REDEFINE_TYPEDEF(const type, alias##c) \
    REDEFINE_TYPEDEF(volatile type, alias##v) \
    REDEFINE_TYPEDEF(const volatile type, alias##cv)

#define TEST_BUILTIN_TYPES \
    REDEFINE_TYPEDEF(void, VOID) \
    REDEFINE_TYPEDEF_CV(_Bool, BOOL) \
    REDEFINE_TYPEDEF_CV(char, CHAR) \
    REDEFINE_TYPEDEF_CV(signed char, SCHAR) \
    REDEFINE_TYPEDEF_CV(unsigned char, UCHAR) \
    REDEFINE_TYPEDEF_CV(short, SHORT) \
    REDEFINE_TYPEDEF_CV(unsigned short, USHORT) \
    REDEFINE_TYPEDEF_CV(int, INT) \
    REDEFINE_TYPEDEF_CV(unsigned int, UINT) \
    REDEFINE_TYPEDEF_CV(long, LONG) \
    REDEFINE_TYPEDEF_CV(unsigned long, ULONG) \
    REDEFINE_TYPEDEF_CV(long long, LLONG) \
    REDEFINE_TYPEDEF_CV(unsigned long long, ULLONG) \
    REDEFINE_TYPEDEF_CV(float, FLOAT) \
    REDEFINE_TYPEDEF_CV(double, DOUBLE) \
    REDEFINE_TYPEDEF_CV(long double, LDOUBLE) \
    REDEFINE_TYPEDEF_CV(float _Complex, FCOMPLEX) \
    REDEFINE_TYPEDEF_CV(double _Complex, DCOMPLEX) \
    REDEFINE_TYPEDEF_CV(long double _Complex, LDCOMPLEX) \

#define TEST_POINTER_TYPES \
    REDEFINE_TYPEDEF_CV(void*, PVOID)
    
#define TEST_ARRAY_TYPES \
    typedef int(A1)[2]; \
    typedef int(A1)[2]; \
    typedef int(A1)[2]; \
    typedef int(A2)[2][3]; \
    typedef int(A2)[2][3]; \
    typedef int(A2)[2][3]; \
    A1 a1; \
    A2 a2;
    
struct S { int _; };
#define TEST_STRUCT_TYPE \
    REDEFINE_TYPEDEF_CV(struct S, STRUCT)
    
union  U { int _; };
#define TEST_UNION_TYPE \
    REDEFINE_TYPEDEF_CV(union U, UNION)
    
enum E { first, second, last };
#define TEST_ENUM_TYPE \
    REDEFINE_TYPEDEF_CV(enum E, ENUM)
    
#define TEST_FUNCTION_TYPE \
    typedef int(FN_TYPE)(const char*, ...); \
    typedef int(FN_TYPE)(const char*, ...); \
    typedef int(FN_TYPE)(const char*, ...);
    
#define TEST_COMPOUND_TYPES \
    TEST_POINTER_TYPES      \
    TEST_ARRAY_TYPES        \
    TEST_STRUCT_TYPE        \
    TEST_UNION_TYPE         \
    TEST_ENUM_TYPE          \
    TEST_FUNCTION_TYPE

TEST_BUILTIN_TYPES
TEST_COMPOUND_TYPES

void test() {
    TEST_BUILTIN_TYPES
    TEST_COMPOUND_TYPES
    {
        TEST_BUILTIN_TYPES
        TEST_COMPOUND_TYPES
    }
}

int main() {
    test();
}
    