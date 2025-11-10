#include "public3/004.h"

namespace case1
{
    void test()
    {
        const int a = 1;
        class X
        {
        public:
            int b = a;
        };
        X x;
        assert(x.b == 1);
    }
}

namespace case2
{
    void test()
    {
        const int a = 1;
        class Y
        {
        public:
            
            class X;
        };
        class Y::X
        {
        public:
            int b = a;
        };
        Y::X x;
        assert(x.b == 1);
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
