
#include "public3/004.h"

namespace case1
{
    void test()
    {
        []{}();
    }
}


namespace case2
{
    class cls_test
    {
    public:
        void foo()
        {
            int x = 1, y = 2, z = 3;
            [&]{}();
            [&, x, y, z]{}();
            [&, this]{}();
            [&, this, x, y, z]{}();
        }
    };
    void test()
    {
        cls_test().foo();
    }
}


namespace case3
{
    void test()
    {
        int x = 1, y = 2, z = 3;
        [=]{}();
        [=, &x, &y, &z]{}();
    }
}


namespace case4
{
    class cls_test
    {
    public:
        void foo()
        {
            int x = 1, y = 2, z = 3;
            [x, y]{}();
            [&x, &y]{}();
            [x, &y, z]{}();
            [this]{}();
            [this, x, y]{}();
            [this, &x, &y]{}();
            [this, x, &y, z]{}();
            
        }
    };
    void test()
    {
        cls_test().foo();
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
