#include <cassert>

struct base1 
{
    int b1;
    int b2;
};

int main()
{
    base1 ob1{1,2};
    assert(ob1.b1 == 1);
    assert(ob1.b2 == 2);
}
