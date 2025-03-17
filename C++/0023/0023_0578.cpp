#include <cassert>

struct B1
{
    int mem;
    int n;
    B1(int):mem(0),n(1)
    {}
};

struct B2:public B1
{
   using B1::B1;
};

struct D1 : public B2
{
    using B2::B2;
};

int main()
{
    D1 d(1);
    assert(d.mem == 0);
    assert(d.n == 1);
}
