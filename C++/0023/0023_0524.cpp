#include <cassert>

struct A
{   
    int mem = 1;
    
    template<typename ...Args>
    void f1(int i)
    {
        auto add3 = [*this](auto a) constexpr mutable 
        {
            return [=](auto a)
            {
                return [&](auto a)
                {
                    return a;
                };
            };
        };
        assert(add3(3)(2)(1) == 1);
    }
    
    template<typename ...Args>
    void f2(Args... i)
    {
        auto add4 = [this,i...](auto m1) constexpr mutable 
        {
            return [&](int a)
            {
                return [=](auto a)
                {
                    return a;
                };
            };
        };
        assert(add4(1)(1)(2) == 2);
    }
};

int main()
{
    auto add1 = [=](auto m1,auto a) constexpr 
    {
        return [&](auto a)
        {
            return [=](auto a)
            {
                return a;
            };
        };
    };
    assert(add1(1,1)(2)(3) == 3);

    int a = 1;
    auto add2 = [&a](auto ...m1) mutable 
    {
        return [a](auto b)
        {
            return [=](auto a)
            {
                return a;
            };
        };
    };
    assert(add2(1)(2)(4) == 4);

    A b;
    b.f1(1);

    b.f2(2);

    int  d = 1;
    auto add5 = [d](int m1) 
    {
        return [&](int a)
        {
            return [=](int a)
            {
                return a;
            };
        };
    };
    assert(add5(1)(1)(5) == 5);

    auto add6 = [&](auto m1,int a) constexpr mutable 
    {
        return [=](auto a)
        {
            return [&](auto a)
            {
                return a;
            };
        };
    };
    assert(add6(1,1)(2)(6) == 6);
}
