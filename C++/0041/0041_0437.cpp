#include "public3/004.h"

template <class T>
static T prvalue() { return T(); }

namespace case1
{
    class A
    {
    public:
        A(){}
        A(A&);
        A(const A&) = default;
        A& operator=(A&);
        A& operator=(const A&) = default;
    };
    A::A(A&) = default;
    A& A::operator=(A&) = default;
    
    void test()
    {
        A a1;
        A a2(a1);
        A a3(prvalue<A>());
        a1 = a2;
        a2 = prvalue<A>();
    }
}

namespace case2
{
    template <class T>
    class A
    {
    public:
        A(){}
        A(A&);
        A(const A&) = default;
        A& operator=(A&);
        A& operator=(const A&) = default;
    };
    template <class T> A<T>::A(A&) = default;
    template <class T> A<T>& A<T>::operator=(A<T>&) = default;
    
    void test()
    {
        A<int> a1;
        A<int> a2(a1);
        A<int> a3(prvalue< A<int> >());
        a1 = a2;
        a2 = prvalue< A<int> >();
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
