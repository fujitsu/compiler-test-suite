#include <cassert>

struct derived;
struct base
{
    friend struct derived;
    int mem = 0;
    protected: 
    base(){}
};
struct derived : base 
{
    int mem1 = 1;
};

int main()
{
    derived d1;
    assert(d1.mem == 0);
    assert(d1.mem1 == 1);
}
