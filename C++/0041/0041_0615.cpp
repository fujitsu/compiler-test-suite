#include "public3/004.h"

class Base
{
public:
    virtual int foo() { return 1; }
    int call(Base* p) { return p->foo(); }
};

class Derived : Base
{
public:
    virtual int foo() { return 2; }

    int size = sizeof(*this);
    int x { 2 * this->size };
    int y = { call(this) };
};

template <class T>
class X : public T
{
public:
    virtual int foo() { return 3; }
    int call(Base* p) { return 0; }
    int size = sizeof(*this);
    int x { 2 * this->size };
    int y = { this->T::call(this) };
};

void test()
{
    Derived d;
    assert(d.size == sizeof(d));
    assert(d.x == sizeof(d) * 2);
    assert(d.y == 2);
    
    X<Base> xb;
    assert(xb.size == sizeof(xb));
    assert(xb.x == sizeof(xb) * 2);
    assert(xb.y == 3);
}

PASS_CASE_MAIN_FUNCTION
