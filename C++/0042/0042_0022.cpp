#include "004.h"

typedef unsigned long size_t;
#define ALIGNMENT 128


namespace case1
{
    alignas(ALIGNMENT) int n1;
    alignas(ALIGNMENT) int n2;

    void test()
    {
        alignas(ALIGNMENT) int n3;
        alignas(ALIGNMENT) int n4;
        assert((size_t)&n1 % ALIGNMENT == 0);
        assert((size_t)&n2 % ALIGNMENT == 0);
        assert((size_t)&n3 % ALIGNMENT == 0);
        assert((size_t)&n4 % ALIGNMENT == 0);
    }
}


namespace case2
{
    struct X
    {
        alignas(ALIGNMENT) int n1;
        alignas(ALIGNMENT) int n2;
    };
    static_assert(sizeof(X) == ALIGNMENT * 2, "error");
    
    template <class T, unsigned int Size>
    struct Y
    {
        alignas(Size) T t1;
        alignas(Size) T t2;
    };
    static_assert(sizeof(Y<char, ALIGNMENT>) == ALIGNMENT * 2, "error");
    static_assert(sizeof(Y<int, ALIGNMENT>) == ALIGNMENT * 2, "error");
    static_assert(sizeof(Y<double, ALIGNMENT>) == ALIGNMENT * 2, "error");
    
    void test() { }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
