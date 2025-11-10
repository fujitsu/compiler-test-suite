#include "public3/004.h"
#include "public3/005.h"


namespace case1
{
    void foo(int&){}
    void test()
    {
        
        {
            
            int x = 1;
            [x]() mutable {
                assert(x == 1);
                x++;
                assert(x == 2);
            }();
            assert(x == 1);

            
            int &y = x;
            static_assert((is_same<decltype(y), int&>::value == true), "not expected type");
            [y]() mutable {
	      
                assert(y == 1);
                y++;
                assert(y == 2);
            }();
            assert(x == 1);
            assert(y == 1);

            
            typedef void (FunType)(int&);
            FunType &rf = foo;
            [rf] {
	      static_assert((is_same<decltype(rf), FunType&>::value == true), "not expected type");
            }();
        }

        
        {
            
            int x = 1;
            [=]() mutable {
                assert(x == 1);
                x++;
                assert(x == 2);
            }();
            assert(x == 1);

            
            int &y = x;
            static_assert((is_same<decltype(y), int&>::value == true), "not expected type");
            [=]() mutable {
	      
                assert(y == 1);
                y++;
                assert(y == 2);
            }();
            assert(x == 1);
            assert(y == 1);
            
            
            typedef void (FunType)(int&);
            FunType &rf = foo;
            [=] {
                static_assert((is_same<decltype(rf), FunType&>::value == true), "not expected type");
            }();
        }
    }
}


namespace case2
{
    void test()
    {
        
        {
            int x = 1;
            [&x]() mutable {
                assert(x == 1);
                x++;
                assert(x == 2);
            }();
            assert(x == 2);
        }

        
        {
            int x = 1;
            [&]() mutable {
                assert(x == 1);
                x++;
                assert(x == 2);
            }();
            assert(x == 2);
        }
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
