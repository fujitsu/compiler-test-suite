#include <cassert>
#include <typeinfo>

struct A
{
    static void fun(){};
};


template<decltype(auto) n> 
struct B
{
    void fun()
    {
        assert(typeid(n)==typeid(void (*)()));
    }
};

template<auto n> 
void fun()
{
    assert(typeid(n)==typeid(void (*)()));
}

int main()
{
    B<&A::fun> b;
    b.fun();
    fun<&A::fun>();
}
