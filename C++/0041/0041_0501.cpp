#include "public3/004.h"
#include <initializer_list>

class X
{
public:
    void foo(int) const {}
    int data;
};

void foo() {}

void test()
{
    
    {
        int x1 {2};
        int x2 {'2'};
        assert(x1 == 2);
        assert(x2 == 0x32);

        enum E { e1, e2 };
        E e {e1};
        assert(e == e1);

        int* p {&x1};
        assert(*p == x1);
        
        void (*pf)() {&foo};
        assert(pf == &foo);

        void (X::*pmf)(int)const {&X::foo};
        int X::*pmd {&X::data};
        assert(pmf == &X::foo);
        assert(pmd == &X::data);
    }

    
    {
        int x1 = {2};
        int x2 = {'2'};
        assert(x1 == 2);
        assert(x2 == 0x32);

        enum E { e1, e2 };
        E e = {e1};
        assert(e == e1);

        int* p = {&x1};
        assert(*p == x1);
        
        void (*pf)() = {&foo};
        assert(pf == &foo);

        void (X::*pmf)(int)const = {&X::foo};
        int X::*pmd = {&X::data};
        assert(pmf == &X::foo);
        assert(pmd == &X::data);
    }
}

PASS_CASE_MAIN_FUNCTION
