#include "public1/004.h"

namespace case1
{
    class  A;
    struct B;
    union  C;

    class X
    {
        typedef int type; 
        
        friend A;
        friend B;
        friend C;
    };

    class  A { X::type data; };
    struct B { X::type data; };
    union  C { X::type data; };
    
    void test() {}
}

namespace case2
{
    namespace ns_test
    {
        class X
        {
        public:
            class A;
            struct B;
            union C;
        };
    }

    class Y
    {
        typedef int type; 

        friend ns_test::X::A;
        friend ns_test::X::B;
        friend ns_test::X::C;
    };

    class  ns_test::X::A { Y::type data; };
    struct ns_test::X::B { Y::type data; };
    union  ns_test::X::C { Y::type data; };
    
    void test() {}
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
