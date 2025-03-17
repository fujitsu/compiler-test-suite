#include <cassert>

struct W 
{
    W(int){}
};

struct X : virtual W 
{
    using W::W; 
    X() = delete;
};

struct Y : X 
{
    using X::X;
};

struct Z : Y, virtual W 
{
    using Y::Y;
    int mem = 2;
    void f()
    {
        assert(mem == 2);
    }
};

int main()
{
    Z z(0);
    z.f();
}
