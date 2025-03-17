#include <cassert>

int f(int a){return a;}
volatile double f(int a,double b) noexcept{ return b;}

int main()
{
    assert(f(1)==1);
    assert(f(1,2.1)==2.1);
}
