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

void test()
{
    B<const int (*)()> b;
    b.f1();

    B<volatile int(*)()>b1;
    b1.f2();

    B<const int (*)()noexcept> b2;
    b2.f3();

    B<volatile int(*)()noexcept>b3;
    b3.f4();
}

int main()
{
    test();
}
