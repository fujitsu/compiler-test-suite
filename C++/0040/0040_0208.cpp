#include "001.h"

template <nullptr_t>
class A {};

template <nullptr_t>
void foo(){}

class B
{
public:
    template <nullptr_t>
    void foo(){}

    template <nullptr_t>
    class C {};
};

template <nullptr_t>
class D
{
public:
    void foo(){}
    class E {};
    static int data;
};

template <>
int D<nullptr>::data = 1;

void test()
{
    A<nullptr> an;

    B().foo<nullptr>();
    B::C<nullptr> bcn;

    D<nullptr> dn;
    dn.foo();
    D<nullptr>::E dne;
    assert(D<nullptr>::data == 1);
}

PASS_CASE_MAIN_FUNCTION
