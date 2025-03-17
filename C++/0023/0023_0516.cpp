#include <cassert>

struct A
{   
    int mem = 1;
    
    template<typename ...Args>
    void f1(Args ... i)
    {
        auto add3 = [*this,i...](auto m1)  {return mem;};
        assert(add3(1) == 1);
    }
    
    template<typename ...Args>
    void f2(int i)
    {
        auto add4 = [this](int m1)  {return mem;};
        assert(add4(1) == 1);
    }
};

int main()
{
    auto add1 = [=](int m1)  {return m1;};
    assert(add1(1) == 1);

    int a = 1;
    auto add2 = [&a](auto ...m1)  {return 1;};
    assert(add2(1) == 1);

    A b;
    b.f1(1);

    b.f2(1);

    int  d = 1;
    auto add5 = [d](auto m1,int a)  {return m1;};
    assert(add5(1,1) == 1);
    
    auto add6 = [&](auto m1,auto ...a)  {return m1;};
    assert(add6(1,1) == 1);
}
