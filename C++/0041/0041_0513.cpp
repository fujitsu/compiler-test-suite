#include "public3/004.h"
#include <initializer_list>

struct X
{
    int n;
    double d;
};

struct Y
{
    operator int(){ return 0; }
    operator double(){ return 0.0; }
};

void f(X) {}

void test()
{
    f({1, 2.0});
    f({'a', 2});
    Y y1, y2;
    f({y1, y2});
}

PASS_CASE_MAIN_FUNCTION
