#include <cassert>

struct B1
{  
   int mem;
   B1(int n)
   {
       mem = n;
   }
};

struct D2 : protected B1
{
    using B1::B1;
    
    void f()
    {
        assert(mem == 1);
    }
};

int main()
{
    D2  d(1);
    d.f();
}
