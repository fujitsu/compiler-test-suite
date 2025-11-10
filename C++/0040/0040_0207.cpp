#include "public1/004.h"

class A;


namespace case1
{
    template <class T, T* >
    void __test() {}

    void test()
    {
        __test<int, nullptr>();
        __test<double, nullptr>();
        __test<A, nullptr>();
    }
}


namespace case2
{
    template <int(*)(double)>
    void __test(){}
    
    void test()
    {
        __test<nullptr>();
    }
}


namespace case3
{
    template <int(A::*)(double)>
    void __test(){}

    void test()
    {
        __test<nullptr>();
    }
}


namespace case4
{
    template <int A::*>
    void __test(){}

    void test()
    {
        __test<nullptr>();
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
    case4::test();
}

PASS_CASE_MAIN_FUNCTION
