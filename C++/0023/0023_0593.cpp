#include <cassert>

struct A
{
    [[unknown_attr]] int a = 1 ;
    [[CC::unknown_attr]] int b = 2;
};

int main()
{
    A b;
    assert(b.a == 1);
    assert(b.b == 2);
}
