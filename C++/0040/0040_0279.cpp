#include "public2/004.h"

struct X
{
    int data;
    X(int d = 0) : data(d) {}
};

X operator "" _x1(const char*) { return X(1); }

template <char...args>
X operator "" _x2() { return X(2); }

namespace N
{
    X operator "" _x3(const char*) { return X(3); }
    
    template <char...args>
    X operator "" _x4() { return X(4); }
}

class Y
{
    X x;
    friend X operator "" _x5(const char*);
};

X operator "" _x5(const char*)
{
    Y y;
    return y.x;
}


template <> X operator "" _x2<'1', '2', '3'>() { return X(6); }


template X N::operator "" _x4<'4', '5'>();

void test()
{
    assert((12345_x1).data == 1);
    assert((12345_x2).data == 2);
    assert((123_x2).data   == 6);
    using N::operator "" _x3;
    assert((12345_x3).data == 3);
    using N::operator "" _x4;
    assert((12345_x4).data == 4);
    assert((12345_x5).data == 0);
}

PASS_CASE_MAIN_FUNCTION
