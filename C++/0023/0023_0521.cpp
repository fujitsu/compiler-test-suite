#include <cassert>

struct A
{
    void f1(int i)
    {
        auto add3 = [*this](auto m1) constexpr mutable 
        {
            return [*this](int a){return a;};
        }(1)(2);
        assert(add3 == 2);
    }

    void f2(int i)
    {
        auto add4 = [this](auto ...m1) constexpr mutable 
        {
            return [&](auto ...a){return 1;};
        }(2)(1);
        assert(add4 == 1);
    }
};

int main()
{
    auto add1 = [=](auto m1,int s) constexpr 
    {
        return [&](auto a){return a;};
    }(1,1)(2);
    assert(add1 == 2);
   
    int a = 1;
    auto add2 = [&a](int m1) constexpr
    {
        return [a](auto b){return b;};
    }(1)(2);
    assert(add2 == 2);

    A b;
    b.f1(1);

    b.f2(1);

    int  d = 1;
    auto add5 = [d](int m1) mutable 
    {
        return [&](auto b){return b;};
    }(1)(2);
    assert(add5 == 2);
    
    auto add6 = [&](int m1) 
    {
        return [=](int m){return m;};
    }(1)(3);
    assert(add6 == 3);
}
