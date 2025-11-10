#include "public2/004.h"
#include "000.h"

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

void f(const X&) {}
void g(const double &){}

void test()
{
    f({'a', 'b'});
    Y y1, y2;
    f({y1, y2});
    g({1});
}

PASS_CASE_MAIN_FUNCTION
