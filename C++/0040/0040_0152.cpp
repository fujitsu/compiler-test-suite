#include "public2/004.h"

class X
{
public:
    virtual void f() final {}
    virtual void g() {};
    virtual void h() = 0;
};

class Y : public X
{
public:
    virtual void g() override final {};
    virtual void h() override {};
};

class Z : public Y
{
public:
    virtual void h() final override {};
};

void test() {}

PASS_CASE_MAIN_FUNCTION
