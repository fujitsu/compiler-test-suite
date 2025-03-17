#include <cassert>
#include <typeinfo>

int a[2] {1,2};
auto f()->int(&)[2]{return a;};

int main()
{
    volatile auto &[xr,yr] = f();
    assert(xr == 1&&yr == 2);
    assert(typeid(xr) == typeid(volatile int)&&typeid(yr) == typeid(volatile int));
    return 0;
}