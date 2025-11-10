#include "public1/004.h"

class X
{
    class inner { }; 
    friend class Y;
};

class Y : X::inner       
{  
    X::inner xinner;     
    class Z
    {
        X::inner xinner; 
    };
};

void test() {}

PASS_CASE_MAIN_FUNCTION
