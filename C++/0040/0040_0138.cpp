#include "public2/004.h"

int flag;

class X
{
public:
    int n;
    double d;
    X(int _n, int _d) : n(_n), d(_d)    { assert(flag == 0); flag++; }
    X(int _n, double _d) : n(_n), d(_d) { assert(flag == 0); flag += 2; }

    X(char _c) : X(_c, 0)  { assert(flag == 1); }
    X(float _f) : X(0, _f) { assert(flag == 2); }
};

void test()
{
    flag = 0;
    X x1('c');
    assert(x1.n == 'c');
    
    flag = 0;
    X x2(2.f);
    assert(x2.n == 0);
}

PASS_CASE_MAIN_FUNCTION
