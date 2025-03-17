#include<cassert>
#include<typeinfo>

template<typename T> 
struct S{};

template<typename T, T n> 
struct S<int[n]> 
{
    using Q = T;
};

int main()
{
   assert(typeid(std::size_t)==typeid(S<int[42]>::Q));
}
