#include <cstddef>
#include<cassert>
#include<typeinfo>

template<auto nul> 
struct B
{
    void fun()
    {
        assert(typeid(nul)==typeid(std::nullptr_t));
    }
};
template<auto nul> 
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
