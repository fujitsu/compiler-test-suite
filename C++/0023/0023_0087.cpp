#include <cassert>
#include <type_traits>

template<auto a>
struct A
{
    void fun()
    {
        assert(true == (std::is_same<int, decltype(a)>::value));
    }
};

template<decltype(auto) a>
struct B
{
   void fun()
   {
       assert(true == (std::is_same<int, decltype(a)>::value));
   }
};

template <const auto a>
struct C
{
    void fun()
    {
        assert(true == (std::is_same<int, decltype(a)>::value));
    }
};

template <volatile auto a>
struct D
{
    void fun()
    {
        assert(true == (std::is_same<int, decltype(a)>::value));
    }
};

void test1()
{
   A<3> a;
   a.fun();

   B<4> b;
   b.fun();

   C<5> c;
   c.fun();

   D<6> d;
   d.fun();
}
int main()
{
    test1();
}
