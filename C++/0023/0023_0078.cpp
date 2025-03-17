#include<cassert>
#include<typeinfo>

template<long n> 
struct A { };

template<typename T> 
struct C{};

template<typename T, T n> 
struct C<A<n>> {
    using Q = T;
};

int main()
{
    assert(typeid(long)==typeid(C<A<2>>::Q));
}
