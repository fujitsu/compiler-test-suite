#include "public3/004.h"

template <class T>
class X
{
public:
    class Y
    {
    public:
        
#if defined(ORG)
        enum class E1;
#endif
        enum class E2 ;
#if defined(ORG)
        enum class E3 : short;
        enum E4 : T;
        enum E5 : short;
#endif

#if defined(ORG)
        enum class E1 { e11, e12 };
#endif
        enum class E2 { e21, e22 };
#if defined(ORG)
        enum class E3 : short { e31, e32};
        enum E4 : T { e41, e42 };
        enum E5 : short { e51, e52 };  
#endif
    };
    
#if defined(ORG)
    typename Y::E1 _e11;
#endif

#if defined(ORG)
    typename Y::E3 _e31;
    typename Y::E4 _e41;
    typename Y::E5 _e51;
#endif
    
#if defined(ORG)
    enum Y::E1 _e12;
#endif

#if defined(ORG)
    enum Y::E3 _e32;
    enum Y::E4 _e42;
    enum Y::E5 _e52;
#endif
};

template class X<int>;

void test() {}

PASS_CASE_MAIN_FUNCTION
