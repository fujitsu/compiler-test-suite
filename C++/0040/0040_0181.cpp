#include "public1/004.h"

template <class T>
class X
{
public:
    void f(T) {}
    void g(T);
};

template <class T>
void foo(T) {}

void test()
{
    class  A {} a; 
    struct B {} b; 
    enum   C {} c; 
    union  D {} d; 

    X<A> xa;
    X<const B> xb;
    X<volatile C> xc;
    X<const volatile D> xd;

    xa.f(a);
    xb.f(b);
    xc.f(c);
    xd.f(d);
    

    foo(a);
    foo(b);
    foo(c);
    foo(d);
}

PASS_CASE_MAIN_FUNCTION
