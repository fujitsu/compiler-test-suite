#include <cassert>

struct A
{
    [[unknown_attr]] [[unknown_attr,unknown_attr]] [[not_std]]static const int a = 1 ;
    [[CC::unknown_attr]][[CC::unknown_attr,not_std]] static const  int b = 2;
};

int main()
{
    A b;
    assert(b.a == 1);
    assert(b.b == 2);
}
