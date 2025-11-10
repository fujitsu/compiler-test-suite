#include "public2/004.h"

struct NonTrivalDefCtor 
{
    NonTrivalDefCtor() {}
};
union U 
{
    NonTrivalDefCtor ntdc;
    U() {} 
} u; 

void test(){}

PASS_CASE_MAIN_FUNCTION
