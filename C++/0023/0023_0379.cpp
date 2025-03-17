#include <cassert>
#include <type_traits>

template<class T, class D = int>
struct S 
{
    T data;
};

int main () 
{
    S<int,double> x{1};
    assert(true == (std::is_same<S<int, double>, decltype(x)>::value));
}
