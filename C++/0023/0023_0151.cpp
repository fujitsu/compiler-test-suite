#include <cassert>
#include <type_traits>

template <typename  T>
struct B
{
    void f1()
    {
        assert(true == (std::is_same<const int (*)(),T>::value) || true == (std::is_same<int (*)(),T>::value));
    }
    void f2()
    {
        assert(true == (std::is_same<int (*)(),T>::value) || true == (std::is_same<volatile int (*)(),T>::value));
    }
    void f3()
    {
        assert(true == (std::is_same<int (*)() noexcept,T>::value) || true == (std::is_same<const int (*)()noexcept,T>::value));
    }
    void f4()
    {
        assert(true == (std::is_same<int (*)() noexcept,T>::value) || true == (std::is_same<volatile int (*)()noexcept,T>::value));
    }
};

struct A
{
     typedef const int (*p)();
     typedef volatile int (*q)();
     typedef const int (*p1)() noexcept;
     typedef volatile int (*q1)() noexcept;
};

void test()
{
    B<A::p> b;
    b.f1();
    B<A::q>b1;
    b1.f2();

    B<A::p1> b2;
    b2.f3();

    B<A::q1>b3;
    b3.f4();
}

int main()
{
    test();
}
