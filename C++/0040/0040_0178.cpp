#include "public2/004.h"

namespace N
{
    class Outer {};
    
    inline namespace ns_inline1
    {
        class Inner {};
        void fio(Outer) {}
    }
    
    void foi(Inner) {}
    
    inline namespace ns_inline2
    {
        void fii(Inner) {}
    }
}

void test()
{
    N::Outer no;
    N::Inner ni;
    fio(no);
    foi(ni);
    fii(ni);
}

PASS_CASE_MAIN_FUNCTION
