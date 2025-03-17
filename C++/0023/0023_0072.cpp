#include <cassert>
#include <typeinfo>

void f(){}

template<decltype(auto) p>
struct B
{
    int mem;
    void fun()
    {
       assert(typeid(p) == typeid(void (*)()));
    }
};

template<decltype(auto) p>
void fun()
{
    assert(typeid(p) == typeid(void (*)()));
}

int main()
{   
    B<&f> b;
    b.fun();
    fun<&f>();
}
