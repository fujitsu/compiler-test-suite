#include <cassert>
#include <type_traits>

template<class T>
struct S 
{
    T data;
    S(T t){}
};

int main () 
{
    S x{1};
    assert(true == (std::is_same<S<int>, decltype(x)>::value));

    S x1{1.0};
    assert(true == (std::is_same<S<double>, decltype(x1)>::value));
}
