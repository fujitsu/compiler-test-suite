#include "public1/004.h"

namespace case1
{
    class X
    {
    public:
        class  A;
        struct B;
        union  C;
    };

    template <class T>
    class Y
    {
        typedef int type; 

        friend typename T::A;
        friend typename T::B;
        friend typename T::C;
    };
    
    class  X::A { Y<X>::type data; };
    struct X::B { Y<X>::type data; };
    union  X::C { Y<X>::type data; };
    
    void test() {}
}

namespace case2
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
        typedef int type; 
        
        friend typename T::template A<int>;
        friend typename T::template B<int>;
        friend typename T::template C<int>;
    };

    template <class T> class  X::A { Y<X>::type data; };
    template <class T> struct X::B { Y<X>::type data; };
    template <class T> union  X::C { Y<X>::type data; };
    
    
    template class X::A<int>;
    
    template struct X::B<int>;
    
    template union X::C<int>;
    
    
    void test() {}
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
