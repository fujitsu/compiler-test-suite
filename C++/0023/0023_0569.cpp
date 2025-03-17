#include <cassert>

struct A 
{
    int mem; 
    template<typename T> A(T)
    {
        mem = 2;
    }
};

struct B : A 
{
    using A::A;
};

int main()
{
  B b(42L);
  assert(b.mem == 2);
}
