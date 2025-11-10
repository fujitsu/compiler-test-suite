#include "public2/004.h"

template <class T>
class X
{
public:
    class Y
    {
    public:
        
        enum class E1;
        enum class E2 : T;
        enum class E3 : short;
        enum E4 : T;
        enum E5 : short;

        enum class E1 { e11, e12 };
        enum class E2 : T { e21, e22 };
        enum class E3 : short { e31, e32};
        enum E4 : T { e41, e42 };
        enum E5 : short { e51, e52 };  
    };
    
    typename Y::E1 _e11;
    typename Y::E2 _e21;
    typename Y::E3 _e31;
    typename Y::E4 _e41;
    typename Y::E5 _e51;
    
    enum Y::E1 _e12;
    enum Y::E2 _e22;
    enum Y::E3 _e32;
    enum Y::E4 _e42;
    enum Y::E5 _e52;
};

template class X<int>;

void test() {}

PASS_CASE_MAIN_FUNCTION
