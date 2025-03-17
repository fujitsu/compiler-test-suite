#include <cassert>

struct S 
{
    static int  m ;
} s;
int S::m = 1;

template <int *p> 
struct B
{
    void fun()
    {
        assert(*p == 1);
    }
};

int main()
{
    B<&S::m> b;
    b.fun();
}
