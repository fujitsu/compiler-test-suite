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
        auto a = f([*this](auto a) constexpr mutable 
                {
                return [&](int b)
                {
                return [=](auto a)
                {
                return a;
                };
                };
                }(3)(2)(1));
        assert(a == 1);
    }
    void f2()
    {
        auto a = f([this](int a) constexpr mutable 
                {
                return [=](auto a)
                {
                return [&](auto ...a)
                {
                return 2;
                };
                };
                }(1)(3)(2));

        assert(a == 2);
    }
};

int main()
{
    A a;
    a.f1();

    a.f2();

    int i = 3;
    auto b = a.f([=](int m1) constexpr 
            {
            return [&](int a)
            {
            return [i](int a)
            {
            return a;
            };
            };
            }(1)(2)(3));
    assert(b == 3);

    auto c  = a.f([i](auto m1,int a) mutable 
            {
            return [i](auto a)
            {
            return [&](auto a)
            {
            return a;
            };
            };
            }(2,1)(3)(4));
    assert(c == 4);

    auto d  = a.f([&](auto m1,auto ...a) 
            {
            return [=](auto a)
            {return [&](auto a)
            {
            return a;
            };
            };
            }(1,1)(3)(5));
    assert(d == 5);

    auto e  = a.f([&i](auto m1) constexpr mutable 
            {
            return [i](auto a,int b)
            {
            return [i](auto a)
            {
            return a;
            };
            };
            }(1)(4,1)(6));
    assert(e == 6);
}
