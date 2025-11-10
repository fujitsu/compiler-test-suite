

#include "public3/004.h"

enum E1 { e11 = 1, e12, e13, X1 };
E1 operator++(E1& e) { return e = E1(e+1); }
E1 operator*(E1 e)   { return e; }
E1 begin(E1 e)       { return e; }
E1 end(E1 e)         { return X1; };

namespace ADL
{
    enum E2 { e21 = 1, e22, e23, X2 };
    E2 operator++(E2& e) { return e = E2(e+1); }
    E2 operator*(E2 e)   { return e; }
    E2 begin(E2 e)       { return e; }
    E2 end(E2 e)         { return X2; };
}

void test()
{
    int sum = 0;
    for(E1 e : e11 )
        sum += e;
    assert(sum == 6);

    sum = 0;
    for(ADL::E2 e : ADL::e21 )
        sum += e;
    assert(sum == 6);
}

PASS_CASE_MAIN_FUNCTION
