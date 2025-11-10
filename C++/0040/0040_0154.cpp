#include "public1/004.h"

namespace case1
{
    class X
    {
        typedef int type; 

        friend class A;
        friend struct B;
        friend union C;
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
        
        friend class ns_test::X::A;
        friend struct ns_test::X::B;
        friend union ns_test::X::C;
    };
    
    class  ns_test::X::A { Y::type data; };
    struct ns_test::X::B { Y::type data; };
    union  ns_test::X::C { Y::type data; };
    
    void test() {}
}

namespace case3
{
    class X
    {
    public:
        template <class T> class  A;
        template <class T> struct B;
        template <class T> union  C;
    };

    template <class T>
    class Y
    {
        typedef double type; 

        friend class T::template  A<int>;
        friend struct T::template B<int>;
        friend union T::template  C<int>;
    };
    
    template <class T> class  X::A { typename Y<X>::type data; };
    template <class T> struct X::B { typename Y<X>::type data; };
    template <class T> union  X::C { typename Y<X>::type data; };

    
    template class X::A<int>;
    
    template struct X::B<int>;
    
    template union X::C<int>;
    
    
    void test() {}
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
