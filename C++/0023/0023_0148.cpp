#include <cassert>

const int f(int a) noexcept{return a;}
volatile double f(int a,double b) noexcept{return b;}

int main()
{
    assert(f(1)==1);
    assert(f(1,2.1)==2.1);
}
