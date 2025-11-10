#include "public3/004.h"
#include <initializer_list>

class X
{
    bool value;
public:
    X(std::initializer_list<int> il){ value = ( il.begin() != il.end() ? true : false ); }
    operator bool() { return value; }
};

void test()
{
    {
        while (X x {1, 2, 3})
            break;
        for (X x1 {1, 2, 3}; X x2 {1, 2, 3};)
            break;
    }
    {
        while (X x = {1, 2, 3})
            break;
        for (X x1 = {1, 2, 3}; X x2 = {1, 2, 3};)
            break;
    }
    int n = 1, sum = 0;
    for(int i : {1, 2, 3})
    {
        assert(i == n++);
        sum += i;
    }
    assert(sum == 6);
}

PASS_CASE_MAIN_FUNCTION
