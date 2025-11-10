#include "public3/004.h"
#include <initializer_list>

template <class T>
class X
{
public:
    X& operator = (std::initializer_list<T>) { return *this; }
    X& operator += (std::initializer_list<T>) { return *this; }
};

struct Y {};
struct Z
{
    Z(){}
    Z(const Y&) {}
};

void test()
{
    X<int> xi;
    xi = {};
    xi = {1, 2, 3};
    xi += {1, 2, 3};
    
    X<Z> xz;
    Y y;
    Z z;
    xz = { y, z };
    xz += { y, z };
}

PASS_CASE_MAIN_FUNCTION
