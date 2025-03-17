#include <cassert>

struct base1 
{
    int b1;
    int b;
};
struct base2 
{
    int b2;
};
struct base3
{
    int b3;
};
struct derived : base1, base2, base3
{
    int d;
	struct base4 
    {
      int b4;
    }b4;
};

int main()
{
    derived d1{{1,4},2,3,{}};
    assert(d1.b1 == 1);
    assert(d1.b == 4);
    assert(d1.b2 == 2);
    assert(d1.b3 == 3);
    assert(d1.d == 0);
    assert(d1.b4.b4 == 0);
}
