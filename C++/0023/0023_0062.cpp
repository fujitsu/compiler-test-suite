#include <cassert>

struct base1 
{
    int b1;
};
struct base2 :base1
{
    int b2;
};
struct base3 :base2
{
    int b3;
};
struct derived : base3
{
    int d;
};

int main()
{
    derived d1{1,2,3};
    assert(d1.b1 == 1);
    assert(d1.b2 == 2);
    assert(d1.b3 == 3);
    assert(d1.d == 0);
}
