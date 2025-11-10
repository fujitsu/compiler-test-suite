#include "public2/004.h"

struct NonTrivalCopyAssi 
{
    NonTrivalCopyAssi& operator=(const NonTrivalCopyAssi&) { return *this; }
};
union U 
{
    NonTrivalCopyAssi ntca;
    U& operator= (const U&) { return *this; } 
};
void test() 
{
    U u1;
    U u2 = u1 ; 
}

PASS_CASE_MAIN_FUNCTION
