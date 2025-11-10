#include "public1/004.h"

class B
{
public:
    static int count;
    B(int){ count++; }
};

int B::count = 0;

B b(0);

class D : public B
{
public:
    D(int n) : decltype(b)(n) {}
};

void test()
{
    assert(B::count == 1);
    D d(0);
    assert(B::count == 2);
}

PASS_CASE_MAIN_FUNCTION
