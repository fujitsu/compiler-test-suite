#include <cassert>
#include <type_traits>

struct A
{
    static const auto x = 1;
    static decltype(auto) y = x;
};

void test1() 
{
    A a;
    assert(true == (std::is_same<A, decltype(a)>::value));
    assert(true == (std::is_same<const int, decltype(A::x)>::value));
    assert(true == (std::is_same<const int, decltype(A::y)>::value));
}

int main()
{
    test1();
}
