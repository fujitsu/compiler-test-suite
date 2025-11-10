#include "public3/004.h"
#include <initializer_list>

typedef std::initializer_list<int> A;

struct B
{
    B(int, int, int) { }
};

struct C
{
    C(std::initializer_list<int>) { }
};

template <class Idx>
struct X
{
    int data;
    int& operator[](Idx) { return data; }
};

void test()
{
    X<A> xa;
    xa[{1,2,3}] = 7;
    assert(xa.data == 7);

    X<B> xb;
    xb[{1,2,3}] = 7;
    assert(xb.data == 7);
    
    X<C> xc;
    xc[{1,2,3}] = 7;
    assert(xc.data == 7);
}

PASS_CASE_MAIN_FUNCTION
