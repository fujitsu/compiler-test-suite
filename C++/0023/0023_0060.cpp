#include <cassert>

struct base1 
{
    int b1;
};
struct derived : public base1
{
    int d;
};

int main()
{
    derived d1{1, 2};
    assert(d1.b1 == 1);
    assert(d1.d == 2);
}
