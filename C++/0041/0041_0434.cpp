#include "public3/004.h"

template <class T>
static T prvalue() { return T(); }

namespace case1
{
    class A
    {
    public:
        A() = default;
        A(const A&) = default;
        A& operator=(const A&) = default;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&) = default;
        A& operator=(A&&) = default;
    #endif
        ~A() = default;
    };
    
    class B
    {
    public:
        virtual ~B() = default;
    };
    
    class C
    {
    public:
        virtual ~C() = 0;
    };
    C::~C() = default;
    class D : public C {};

    void test()
    {
        A a1;
        A a2(a1);
        a2 = a1;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A a3(prvalue<A>());
        a3 = prvalue<A>();
    #endif
        a1.~A();
        
        B b;
        D d;
    }
}

namespace case2
{
    class A
    {
    public:
        A();
        A(const A&);
        A& operator=(const A&);
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&);
        A& operator=(A&&);
    #endif
        ~A();
    };
    
    A::A() = default;
    A::A(const A&) = default;
    A& A::operator=(const A&) = default;
#ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
    A::A(A&&) = default;
    A& A::operator=(A&&) = default;
#endif
    A::~A() = default;

    void test()
    {
        A a1;
        A a2(a1);
        a2 = a1;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A a3(prvalue<A>());
        a3 = prvalue<A>();
    #endif
        a1.~A();
    }
}

namespace case3
{
    template <class T>
    class A
    {
    public:
        A() = default;
        A(const A&) = default;
        A& operator=(const A&) = default;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&) = default;
        A& operator=(A&&) = default;
    #endif
        ~A() = default;
    };

    void test()
    {
        A<int> a1;
        A<int> a2(a1);
        a2 = a1;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A<int> a3(prvalue< A<int> >());
        a3 = prvalue< A<int> >();
    #endif
        a1.~A<int>();
    }
}

namespace case4
{
    template <class T>
    class A
    {
    public:
        A();
        A(const A&);
        A& operator=(const A&);
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&);
        A& operator=(A&&);
    #endif
        ~A();
    };

    template <class T> A<T>::A() = default;
    template <class T> A<T>::A(const A<T>&) = default;
    template <class T> A<T>& A<T>::operator=(const A<T>&) = default;
#ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
    template <class T> A<T>::A(A<T>&&) = default;
    template <class T> A<T>& A<T>::operator=(A<T>&&) = default;
#endif
    template <class T> A<T>::~A() = default;

    void test()
    {
        A<int> a1;
        A<int> a2(a1);
        a2 = a1;
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A<int> a3(prvalue< A<int> >());
        a3 = prvalue< A<int> >();
    #endif
        a1.~A<int>();
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
    case4::test();
}

PASS_CASE_MAIN_FUNCTION
