#include <cassert>

int i = 0;

void test(){}

struct B
{
    void f() noexcept;
};

void B::f() noexcept
{
    i++;
    test();
}

void fun()noexcept;
void fun()noexcept(true);
void fun() noexcept
{
    i++;
    test();
}

template<typename T> void func()noexcept;
template<typename T> void func()noexcept(true);
template<typename T>
void func() noexcept
{
    i++;
    test();
}

int main()
{
    B b;
    b.f();

    fun();

    func<int>();
    
    assert(i == 3);
    return 0;
}
