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

class {} a; 
struct{} b; 
enum  {} c; 
union {} d; 

typedef class {} E; 
typedef struct{} F; 
typedef enum  {} G; 
typedef union {} H; 

namespace
{
    typedef class {} I; 
    typedef struct{} J; 
    typedef enum  {} K; 
    typedef union {} L; 
}


void test()
{
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
    
    E e;
    F f;
    G g;
    H h;
    foo(e);
    foo(f);
    foo(g);
    foo(h);
    
    I i;
    J j;
    K k;
    L l;
    foo(i);
    foo(j);
    foo(k);
    foo(l);
}

PASS_CASE_MAIN_FUNCTION
