#include "public1/004.h"

void test()
{
    int x = 11;
    try
    {
        [&](int y) mutable throw(long) -> double {
            try
            {
                x *= y;
                throw x;
            }
            catch(int e)
            {
                throw long(e);
            }
        }(2);
    }
    catch (long e)
    {
        assert(x == 22);
        assert(e == x);
    }
}

PASS_CASE_MAIN_FUNCTION
