#include <cassert>

struct A 
{
    int mem ;
    template<typename T> A(T, typename T::type = 0){}
    A(int){}
    A(){}
};

struct B : A 
{
    using A::A;
    B(int a )
    { 
        mem = a;
        assert(mem == 42);
    }
};

int main()
{
    B b(42L);
}
