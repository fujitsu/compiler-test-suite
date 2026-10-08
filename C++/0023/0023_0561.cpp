#include <cassert>

struct B1
{
#if defined(__GNUC__) && !defined(__clang__)
    B1(int,int,int) { }
#else
    B1(int,...) { }
#endif
};

int get()
{
    return 1;
}

struct D1 : B1
{
    using B1::B1; 
    int x;
    int y = get();
};

void test()
{
    D1 d(2,3,4);
    assert(d.y == 1);
}

int main()
{
    test();
}
