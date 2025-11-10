#include "public2/004.h"

namespace N
{
    inline namespace ns_inline1
    {
        template <class T> class X {};
    }
    
    
    template class X<char>;
    
    
    template <> class X<short> {};
}

inline namespace ns_inline2
{
    template <class T> class X {};
}


template class X<char>;


template <> class X<short> {};

void test() {}

PASS_CASE_MAIN_FUNCTION
