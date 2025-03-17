#include <cassert>
#include <type_traits>


template<class ...T>
struct S 
{
   int mem; 
};

template<class ...U>
S(U...) -> S<int,double>;

int main () 
{
    S x{1};
    assert(false == (std::is_same<S<int>, decltype(x)>::value));
    assert(true == (std::is_same<S<int,double>, decltype(x)>::value));
}
