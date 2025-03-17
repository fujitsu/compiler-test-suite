#include <cassert>

struct A
{
    int mem;
    auto f1()
    {
        return [*this](auto m1) constexpr mutable 
        {
            return [&](int a ){return a;};
        }(1)(2);
    }
    auto f2()
    {
        return [this](auto ...m1) constexpr mutable 
        {
            return [=](auto ...a){return 2;};
        }(1)(2);
    }
};

auto f3(int i )
{   
    return [=](auto  m1,auto a) mutable 
    {
        return [i](auto a){return a;};
    }(1,1)(3);
}

auto f4(int i)
{
    return [&i](int m1,auto ...b) constexpr 
    {
        return [i](int a ){return a;};
    }(1,2)(4);
}

auto f5(int i)
{
    return [i](auto ...m1)
    {
        return [i](auto a ){return a;};
    }(1)(5);
}

auto f6(int i)
{
    return [&](auto m1) constexpr
    {
        return [i](auto ...a){return 6;};
    }(1)(6);
}

int main()
{
    A b;
    assert(b.f1() == 2);
    
    assert(b.f2() == 2);
    
    assert(f3(2) == 3);

    assert(f4(3)== 4);

    assert(f5(4) == 5);

    assert(f6(5)== 6);
}
