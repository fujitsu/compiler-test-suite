#include "public3/004.h"

int count = 0;
int f() { return count++; }

class X
{
public:
    int value = f();
};

void test()
{
    X arr[5];
    assert(count == 5);
    for(int i = 0; i < 5; i++)
        assert(arr[i].value == i);
}

PASS_CASE_MAIN_FUNCTION
