#include <iostream>
#include <cassert>

struct A
{
    A()
    {
        mem = 3;
    }
    int mem;
};

template<class T> struct Log : T 
{
    using T::T;  
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
