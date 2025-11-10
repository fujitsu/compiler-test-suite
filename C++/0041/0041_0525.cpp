#include "public3/004.h"
#include "public3/005.h"

namespace N
{
    int y;
    class C;
    
    inline namespace M
    {
        int x = 1;
        int y = 2;
        class C {};
        void f() {}
    }
}

void test()
{
    assert( N::x == 1 );
    assert( N::M::y == 2 );
    N::M::C c; 
    static_assert( (is_same<decltype(c), N::M::C>::value), "error" );
}

PASS_CASE_MAIN_FUNCTION
