#include <cassert>
#include <type_traits>

template <typename  T>
struct B
{
    void f1()
    {
        assert(true == (std::is_same<int&,T>::value) || true == (std::is_same<const int &,T>::value));
    }
    void f2()
    {
        assert(true == (std::is_same<int&,T>::value) || true == (std::is_same<volatile int &,T>::    value));
    }
};

void test()
{
    B<const int&> b;
    b.f1();

    B<volatile int&> b1;
    b1.f2();
}

int main()
{
    test();
}
