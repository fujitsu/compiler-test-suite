#include <cassert>

class A
{
    int m;
};
template <const A* p> struct B
{
    int mem;
    void fun()
    {
        assert(p == nullptr);
    }
};

int main()
{
    B<nullptr> b;
    b.fun();
}
