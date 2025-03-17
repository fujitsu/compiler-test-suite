#include <cassert>
#include <type_traits>

template <typename T>
struct B
{
    typedef int (* CallIt) (const T& t);
    template <typename T2>
    static int fun(const T& t) noexcept{ return 1;}
};

int main()
{
    B<int>::CallIt p  = B<int>::fun<int>;
    assert(true == (std::is_same<decltype(p),B<int>::CallIt>::value));
}
