#include <cassert>
#include <type_traits>

template<class T, class D = int>
struct S 
{
    T data;
};

template<class U>
S(U) -> S<typename U::type>;

struct A 
{
    using type = short;
    operator type(){ return 0; }
};

int main () 
{
    S<short> x{A()};
    assert(true == (std::is_same<S<short, int>, decltype(x)>::value));
}
