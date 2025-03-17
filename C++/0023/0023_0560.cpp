#include <cassert>

struct B1 
{
    int mem;
    B1()
    {
        mem = 1;
    }
    B1(int, ...) { }
};

struct B2
{
    B2(double){}
};

struct D2 : B2
{
    using B2::B2; 
    B1 b;
};

void test()
{
    D2 f(1.0);
    assert(f.b.mem == 1);
}

int main()
{
    test();
}
