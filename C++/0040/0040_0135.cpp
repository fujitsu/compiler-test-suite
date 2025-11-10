#include "public1/004.h"

template <class T>
static T prvalue() { return T(); }

namespace case1
{
    class A
    {
    public:
        A(){}
        A(const A&){}
        A& operator=(const A&) &  = default;
        A& operator=(const A&) && = default;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A& operator=(A&&) &  = default;
        A& operator=(A&&) && = default;
    #endif
    };
    
    void test()
    {
        A a1, a2;
        a1           = a2;           
        prvalue<A>() = a2;           
        a1           = prvalue<A>(); 
        prvalue<A>() = prvalue<A>(); 
    }
}

namespace case2
{
    template <class T>
    class A
    {
    public:
        A(){}
        A(const A&){}
        A& operator=(const A&) &  = default;
        A& operator=(const A&) && = default;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A& operator=(A&&) &  = default;
        A& operator=(A&&) && = default;
    #endif
    };

    void test()
    {
        A<int> a1, a2;
        a1                  = a2;                  
        prvalue< A<int> >() = a2;                  
        a1                  = prvalue< A<int> >(); 
        prvalue< A<int> >() = prvalue< A<int> >(); 
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
