#include "public2/004.h"

int flag = 0;

class X
{
    X(int) {}
public:
    X() try : X(0) 
    {
        throw 0;
    } 
    catch (int)
    {
        assert(flag == 1);
        throw 1;
    }

    ~X() { flag++; }
};

void test()
{
    try
    {
        X x;
    }
    catch (int e)
    {
        assert(e == 1);
        return;
    }
    assert(0);
}

PASS_CASE_MAIN_FUNCTION
