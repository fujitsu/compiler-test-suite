#include "public3/004.h"


namespace case1
{
    class X
    {
    public:
        constexpr operator int() { return 4; }
    };

    char arr[X()] = {0};
    enum E : unsigned char { e1 = X(), e2 };
    static_assert(X(), "error");
    struct Y
    {
        int data : X();
    };
    template <int> class Z {};
    
    void test()
    {
        int n = 4;
        switch (n)
        {
            case X():
                break;
            default:
                assert(0);
        }
        X x;
        Z<x> zx;
    }
}


namespace case2
{
    enum E { e1, e2};
    const E e = e2;
    template<E> struct T {};
    T<e> s10;
    void test() {}
}


namespace case3
{
    enum class E : int { e1 = false, e2 = 'c', e3 = (short)1 };
    void test() {}
}


namespace case4
{
    enum E: unsigned char { e1, e2 };
    constexpr const char* p = "hello";
    unsigned int n;
    void test()
    {
        switch (n)
        {
            case e1:
            case *(p+2):
                break;
        }
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
