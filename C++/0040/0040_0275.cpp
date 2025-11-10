#include "public2/004.h"

int operator "" _x1 (long double){return 1;}
double operator "" _x1 (const char *){return 2;}


void test1()
{        
    int i1 = 0.123_x1;
    assert(i1 == 1);
    int i2 = 45._x1;
    assert(i2 == 1);
    int i3 = 0377e-1_x1;
    assert(i3 == 1);
}


double operator "" _x2 (const char *){return 2;}


void test2()
{        
    int i1 = 0.123_x2;
    assert(i1 == 2);
    int i2 = 45._x2;
    assert(i2 == 2);
    int i3 = 0377e-1_x2;
    assert(i3 == 2);
}



template<char...args> char operator "" _x3 (){return sizeof ...(args);} 

void test3()
{        
    int i1 = 0.123_x3;
    assert(i1 == 5);
    int i2 = 45._x3;
    assert(i2 == 3);
    int i3 = 0377e-1_x3;
    assert(i3 == 7);
}

void test()
{
    test1();
    test2();
    test3();
}

PASS_CASE_MAIN_FUNCTION
