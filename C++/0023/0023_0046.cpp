#include <cassert>

struct A 
{
    int i;
    operator int(){return i;}
};
struct B 
{
    A a1, a2;
    int z;
}; 

int main()
{
    A a;
    B b = { 4, a, a };
    assert(b.a1.i==4);
    assert(b.a2==a);
    assert(b.z==a.i);
}
