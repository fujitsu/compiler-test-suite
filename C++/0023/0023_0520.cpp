#include <cassert>

struct A
{   
    int mem = 2;

    int f(int i)
    {
        return i;
    }
    void f1()
    {
        assert(f([*this](auto a) constexpr mutable {return mem;}(1)) == 2);
    }
    void f2()
    {
        assert(f([this](int a) constexpr mutable {return mem;}(1)) == 2);
    }
};

int main()
{
    A a;
    a.f1();

    a.f2();
    
    int i = 3;
    auto b = a.f([=](auto m1,int a) constexpr mutable {return i;}(1,1));
    assert(b == 3);

    auto c  = a.f([i](auto ...m1) constexpr mutable {return i;}(1));
    assert(c == 3);

    auto d  = a.f([&](int a,auto ...m1) constexpr mutable {return i;}(1,1));
    assert(d == 3);
    
    auto e  = a.f([&i](auto a,auto ... m1) constexpr mutable {return i;}(1,1));
    assert(e == 3);
}
