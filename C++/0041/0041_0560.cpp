#include "public3/004.h"

void test()
{
    
    {
        int n = 0;
        auto x1 = [n]()mutable throw(int){
            n++;
            throw n;
        };
        try
        {
            x1();
        }
        catch (int e)
        {
            assert(e == 1);
            assert(n == 0);
        }
        auto x2(x1);    
        try
        {
            x2();
        }
        catch (int e)
        {
            assert(e == 2);
            assert(n == 0);
        }
    }
    
    
    {
        int n = 0;
        auto x1 = [&n]()mutable throw(int) {
            n++;
            throw n;
        };
        try
        {
            x1();
        }
        catch (int e)
        {
            assert(e == 1);
            assert(n == 1);
            n++;
        }
        auto x2(x1);    
        try
        {
            x2();
        }
        catch (int e)
        {
            assert(e == 3);
            assert(n == 3);
        }
    }
}

PASS_CASE_MAIN_FUNCTION
