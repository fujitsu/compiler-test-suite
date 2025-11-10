#include "public2/004.h"

struct NonTrivalDctor 
{
    ~NonTrivalDctor() {}
};
union U 
{
    NonTrivalDctor ntd;
    ~U() {} 
};

U u; 

void test(){}

PASS_CASE_MAIN_FUNCTION
