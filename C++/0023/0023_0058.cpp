#include <cassert>

struct C
{
    int i;
    int j;
};
struct base1
{
    int b1;
    int b;
    static int b2;
    static int b3;
    C c;
};

int main()
{
    base1 ob1{1,2,3,4};
    assert(ob1.b1 == 1);
    assert(ob1.b == 2);
    assert(ob1.c.i == 3);
    assert(ob1.c.j == 4);
}
