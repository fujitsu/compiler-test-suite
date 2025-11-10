#include "public3/004.h"

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
    class  {} a; 
    struct {} b; 
    enum   {} c; 
    union  {} d; 

    typedef decltype(a) A;
    typedef const decltype(b) B;
    typedef volatile decltype(c) C;
    typedef const volatile decltype(d) D;

    X<A> xa;
    X<B> xb;
    X<C> xc;
    X<D> xd;

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
