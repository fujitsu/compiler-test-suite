#include <cassert>

struct B1 
{
   B1(){}
   B1(int){}
};

struct B2
{
    B2(){}
    B2(int){}
};

struct D2 : B1, B2 
{
    using B1::B1;
    using B2::B2;
    D2(int n)
    {
        mem = n;
    }
    int mem;
};

int main()
{
    D2  d(1);
    assert(d.mem == 1);
}
