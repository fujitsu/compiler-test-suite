#include "public2/004.h"
#include "000.h"

class X;

void test()
{
    
    {
        int x1 {};
        assert(x1 == 0);

        enum E { e1, e2 };
        E e {};
        assert(e == E());

        int* p {};
        int** pp {};
        assert(p == 0);
        assert(pp == 0);
        
        void (*pf)() {};
        assert(pf == 0);

        void (X::*pmf)(int)const {};
        int X::*pmd {};
        assert(pmf == 0);
        assert(pmd == 0);
    }

    
    {
        int x1 = {};
        assert(x1 == 0);

        enum E { e1, e2 };
        E e = {};
        assert(e == E());

        int* p = {};
        int** pp = {};
        assert(p == 0);
        assert(pp == 0);
        
        void (*pf)() = {};
        assert(pf == 0);

        void (X::*pmf)(int)const = {};
        int X::*pmd = {};
        assert(pmf == 0);
        assert(pmd == 0);
    }
}

PASS_CASE_MAIN_FUNCTION
