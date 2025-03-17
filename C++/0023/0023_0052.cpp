#include <cassert>

struct A 
{
    int x;
    struct B
    {
        int i;
        int j;
    } b;
};

int main()
{
    A a = {1, 2};
    assert(a.x==1);
    assert(a.b.i==2);
    assert(a.b.j==0);
}
