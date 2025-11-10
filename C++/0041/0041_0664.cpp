#include "public3/004.h"

template <class T> struct A {};
template <class T> struct B {};


A<B<int>> abi;

namespace ns_test
{
    A<B<int>> abi;
}

class cls_test
{
public:
    A<B<int>> abi;
    class cls_nest
    {
        A<B<int>> abi;
    };
};
cls_test ct;
cls_test::cls_nest cn;



template <int i>
struct X
{
    static int const c = 2;
};
template<>
struct X<0> 
{
    typedef int c;
};
template<typename T>
struct Y 
{
    static int const c = 3;
};
static int const c = 4;

void test()
{
    assert((Y<X<1> >::c >::c>::c) == 0);  
    assert((Y<X<1>>::c >::c>::c) == 0);
    assert((Y<X<(1>>::c) >::c>::c) == 3);
}

PASS_CASE_MAIN_FUNCTION
