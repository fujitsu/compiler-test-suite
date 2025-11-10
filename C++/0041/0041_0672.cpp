#include "public3/004.h"

int flag = 0;

int f()
{
    assert( flag == 0 );
    return ++flag;
}

void g( int )
{
    assert( flag == 1 );
}

struct X
{
    void foo() { assert( flag == 1 ); }
};

X getX()
{
    assert(flag++ == 0);
    return X();
}

void test()
{
    g( f() );
    
    flag = 0;
    getX().foo();
}

PASS_CASE_MAIN_FUNCTION
