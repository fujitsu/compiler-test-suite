#include "public1/004.h"

template <class T>
class R
{
    typedef int type; 
    friend T;
};

class  A { R<A>::type data; };
struct B { R<B>::type data; };
union  C { R<C>::type data; };

void test()
{    
    R<A> ra;
    R<const A> rca;
    R<volatile A> rva;
    R<const volatile A> rcva;

    R<B> rb;
    R<C> rc;
 
    R<int> ri;          
    R<char*> rpc;       
    R<double&> rrd;     
    R<int(*)()> rf;     
    R<void> rv;         
    R<int A::*> rmd;    
    R<int(A::*)()> rmf; 
}

PASS_CASE_MAIN_FUNCTION
