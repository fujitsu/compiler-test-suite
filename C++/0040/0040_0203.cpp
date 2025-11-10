#include "public2/004.h"

int flag = 0;
int count = 0;

class X
{
public:
    X() { flag = 1; count++; }
    X(int) { flag = 2; count++; }
    X(double) { flag = 3; count++; }
};

class Y
{
public:
    Y() {} 
    Y(double d) : x(d) {}
    X x = {0};
};

void test()
{
    Y y1;
    assert(count == 1);
    assert(flag == 2);
    
    flag = 0;

    Y y2(0.0);
    assert(count == 2);
    assert(flag == 3);
}

PASS_CASE_MAIN_FUNCTION
