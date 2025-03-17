#include <cassert>

struct A 
{
    int mem;
    int n;
    template<typename ...T> 
    A(T... t)
    {
        mem = 0;
        n = 2;
    }
};

struct C
{
    int j;
    C()
    {
        j = 1;
    }
};

template <typename T>
struct B : A 
{
    using A::A;
    C c;
};

int main()
{
    B<int> b(1,2,3);
    assert(b.mem == 0);
    assert(b.n == 2);
    assert(b.c.j == 1);
}
