#include "public3/004.h"

union U1
{
    static int &c ;
    static int r;
};

int U1::r = 1;
int& U1::c = U1::r;

void test(){}

PASS_CASE_MAIN_FUNCTION

