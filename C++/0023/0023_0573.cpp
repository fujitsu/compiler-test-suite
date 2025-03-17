#include <cassert>

struct A 
{ 
    A(int){}
};

struct B : A
{
    using A::A; 
};

struct V1 : virtual B 
{ 
    using B::B;
};

struct V2 : virtual B 
{ 
    using B::B; 
};

struct D2 : V1, V2 
{
    using V1::V1;
    using V2::V2;
    
    int mem = 3;
    
    void f()
    {
       assert(mem == 3);
    }
};

int main()
{
    D2 d(1);
    d.f();
}
