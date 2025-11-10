#include "public3/004.h"

int operator "" _x1 (unsigned long long){return 1;}
int operator "" _x1 (const char *c){return 2;}


void test1()
{        
    int i1 = 0x123_x1;
    assert(i1 == 1);
    int i2 = 12322323_x1;
    assert(i2 == 1);
    int i3 = 012333_x1;
    assert(i3 == 1);
}


int operator "" _x2 (const char *){return 2;}


void test2()
{        
    int i1 = 0x123_x2;
    assert(i1 == 2);
    int i2 = 12322323_x2;
    assert(i2 == 2);
    int i3 = 012333_x2;
    assert(i3 == 2);
}



template<char ...args>char operator "" _x3(){return sizeof...(args);}   

void test3()
{        
    int i1 = 0x123_x3;
    assert(i1 == 5);
    int i2 = 12322323_x3 ;
    assert(i2 == 8);
    int i3 = 012333_x3;
    assert(i3 == 6);
}

void test()
{
    test1();
    test2();
    test3();
}

PASS_CASE_MAIN_FUNCTION
