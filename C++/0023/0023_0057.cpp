#include <cassert>

struct A
{
    int i;
    int j;
};
struct B:A
{
    int k;
    int h;
};
struct C
{
    int j;
};
struct base1:B
{
    int b1;
    protected:
    static int b2;
    static int b3;
    public:
    C c;

};

int main()
{
    base1 ob1{1,2,3,4,5,6};
    assert(ob1.i == 1);
    assert(ob1.j == 2);
    assert(ob1.k == 3);
    assert(ob1.h == 4);
    assert(ob1.b1 == 5);
    assert(ob1.c.j == 6);
}
