#include <cstddef>
#include<cassert>
#include<typeinfo>

template<decltype(auto) nul> 
struct B
{
    void fun()
    {
        assert(typeid(nul)==typeid(std::nullptr_t));
    }
};
template<decltype(auto) nul> 
void fun()
{
    assert(typeid(nul)==typeid(std::nullptr_t));
}

int main()
{  
    B<nullptr> b;
    b.fun();
    fun<nullptr>();
}
