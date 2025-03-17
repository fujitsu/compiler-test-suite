#include <cstddef>
#include<cassert>
#include<typeinfo>

template<std::nullptr_t nul> 
struct B
{
    void fun()
    {
       assert(typeid(nul)==typeid(std::nullptr_t));
    }
};

template<std::nullptr_t nul> 
void fun()
{
    assert(typeid(nul)==typeid(std::nullptr_t));
}

void fun1(std::nullptr_t nul)
{
    assert(typeid(nul)==typeid(std::nullptr_t));
}
int main()
{  
    B<nullptr> b;
    b.fun();
    fun<nullptr>();
    fun1(nullptr);
}
