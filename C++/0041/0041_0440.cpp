#include "public3/004.h"

int flag = 0;

class X
{
    X(int) {}
public:
    X() : X(0) { throw 0; }
    ~X() { flag++; }
};

void test()
{
    try
    {
        {
            X x;
        }
    }
    catch (int)
    {
        assert(flag == 1);
        return;
    }
    assert(0);
}

PASS_CASE_MAIN_FUNCTION
