#include <cassert>

struct B
{
    int i;
    int j;
};
struct base1 
{
    int b1;
    B b;
    protected:
    static int b2;

};

int main()
{
    base1 ob1{1,{2,3}};
    assert(ob1.b1 == 1);
    assert(ob1.b.i == 2);
    assert(ob1.b.j == 3);
}
