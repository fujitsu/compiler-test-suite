#include <cassert>
#include <type_traits>

template<class T, class D = int>
struct S 
{
    T data;
    D da;
};

template<class U,class D >
S(U,D) -> S<int,double>;

int main () 
{
    S x{1,1.0};
    assert(true == (std::is_same<S<int,double>, decltype(x)>::value));

    S x1{1,1};
    assert(true == (std::is_same<S<int,double>, decltype(x1)>::value));
}
