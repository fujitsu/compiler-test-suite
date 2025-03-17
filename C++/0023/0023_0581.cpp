#include <iostream>
#include <cassert>

struct A
{
    A(){}
};

struct B
{
    B()
    {
        mem = 3;
    }
    int mem;
};

template<class T> struct Log : B
{
    using B::B;  
    ~Log() 
    { 
        std::cout << "Destroying wrapper" << std::endl;
    }
};
int main()
{
    Log<A> l;
    assert(l.mem == 3);
}
