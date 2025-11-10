#include "public2/004.h"
#include "public2/006.h"

void test()
{

    int x = 1;
    x = {};
    assert(x == 0);
    x = {2};
    assert(x == 2);


    enum {} e1;
    e1 = {};


    const char* p1, *p2;
    p1 = {};
    p2 = {"hello"};


    struct C
    {
        int data;
        int foo(int) const { return 0; }
    };
    int C::*pmd1, C::*pmd2;
    int (C::*pmf1)(int)const, (C::*pmf2)(int)const;
    pmd1 = {};
    pmd2 = { &C::data };
    pmf1 = {};
    pmf2 = { &C::foo };


    std::nullptr_t np;
    np = {};
}

PASS_CASE_MAIN_FUNCTION
