#include <cassert>

int i = 0;

void test() noexcept(true){}
void test1() noexcept(false){}

struct B
{
    void f() noexcept;
};

void B::f() noexcept
{
    i++;
    test();
    test1();
}

void fun()noexcept;
void fun()noexcept(true);
void fun() noexcept
{
    i++;
    test();
    test1();
}

template<typename T> void func()noexcept;
template<typename T> void func()noexcept(true);
template<typename T>
void func() noexcept
{
    i++;
    test();
    test1();
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
