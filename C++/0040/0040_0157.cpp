#include "public1/004.h"


namespace case1
{
    class X;

    namespace ns_test
    {
        class Y
        {
            typedef int type; 
            friend class X;   
        };
        class X { Y::type data; }; 
    }

    

    void test() {}
}


namespace case2
{
    class X;

    namespace ns_test
    {
        class Y
        {
            typedef int type; 
            friend X; 
        };

        
    }

    class X { ns_test::Y::type data; }; 

    void test(){}
}


namespace case3
{
    struct X { class inner; };

    namespace ns_test
    {
        template <class T>
        class Y
        {
            typedef int type; 
            friend typename T::inner;
        };
        
        struct X { class inner; };

        class X::inner { Y<X>::type data; }; 
    }

    class X::inner { ns_test::Y<X>::type data; }; 

    void test(){}
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
