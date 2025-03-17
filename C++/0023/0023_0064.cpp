#include <cassert>

struct base1 
{
    int b1;
    base1(){b1 = 1;}
};
struct base2
{
    int b2;
    base2(){b2 = 2;}
};
struct base3 
{
    int b3;
};
struct derived : base1, base2, base3
{
    int d;
};

int main()
{
    derived d1{{}, {}};
    assert(d1.b1 == 1);
    assert(d1.b2 == 2);
    assert(d1.b3 == 0);
    assert(d1.d == 0);
}
