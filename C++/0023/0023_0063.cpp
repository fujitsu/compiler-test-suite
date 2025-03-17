#include <cassert>

struct base1 
{
    int b1;
};
struct base2
{
    int b2;
};
struct derived : base1, base2
{
    int d;
};

int main()
{
    derived d1{1, 2, 3};
    assert(d1.b1 == 1);
    assert(d1.b2 == 2);
    assert(d1.d == 3);
}
