#include <cassert>

struct A
{
    void f1(int i)
    {
        auto add3 = [*this](auto m1) mutable {return m1;}(1);
        assert(add3 == 1);
    }

    void f2(int i)
    {
        auto add4 = [this](int m1) mutable {return m1;}(1);
        assert(add4 == 1);
    }
};

int main()
{
    auto add1 = [=](auto m1,int a) mutable {return m1;}(1,1);
    assert(add1 == 1);

    int a = 1;
    auto add2 = [&a](auto ...m1) mutable {return 1;}(1);
    assert(add2 == 1);

    A b;
    b.f1(1);

    b.f2(1);

    int  d = 1;
    auto add5 = [d](auto a, auto ...m1) mutable {assert(d==1);return 1;}(1,1);
    assert(add5 == 1);
    
    auto add6 = [&](int a,auto ...m1) mutable {assert(d==1);return 1;}(1,1);
    assert(add6 == 1);
}
