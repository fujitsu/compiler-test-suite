#include "public3/004.h"

struct X1
{
    X1(){}
    X1(X1&&){}
};
X1 x11 ;
X1 x12 = static_cast<X1&&>(x11);

struct X2
{
    X2(){}
    X2(const X2&&){}
};
X2 x21 ;
X2 x22 = static_cast<X2&&>(x21);

struct X3
{
    X3(){}
    X3(volatile X3&&){}
};
X3 x31 ;
X3 x32 = static_cast<X3&&>(x31);

struct X4
{ 
    X4(){}
    X4(const volatile X4&&){}
};
X4 x41 ;
X4 x42 = static_cast<const volatile X4&&>(x41);

struct X5
{ 
    X5(){}
    X5(X5&&,int i=1){}
};
X5 x51 ;
X5 x52 = static_cast<X5&&>(x51);

void test(){}

PASS_CASE_MAIN_FUNCTION
