#include "public3/004.h"

template <class T>
static T prvalue() { return T(); }

namespace case1
{
    class A
    {
    public:
        A() throw(int) {}
        A(const A&) throw(int) {}
        A& operator=(const A&) throw(int) { return *this; }
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&) throw(int) {}
        A& operator=(A&&) throw(int) { return *this; }
    #endif
        ~A() throw(int) {}
    };

    
    namespace ns_single
    {
        
        class B : public A
        {
        public:
            B() = default;
            B(const B&) = default;
            B& operator=(const B&) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            B(B&&) = default;
            B& operator=(B&&) = default;
        #endif
            ~B() = default;
        };
        
        
        class C : public A
        {
        public:
            C() throw(int) = default;
            C(const C&) throw(int) = default;
            C& operator=(const C&) throw(int) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            C(C&&) throw(int) = default;
            C& operator=(C&&) throw(int) = default;
        #endif
            ~C() throw(int) = default;
        };

   }

    
    namespace ns_multiple
    {
        class E
        {
        public:
            E() throw(char) {}
            E(const E&) throw(char) {}
            E& operator=(const E&) throw(char) { return *this; }
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            E(E&&) throw(char) {}
            E& operator=(E&&) throw(char) { return *this; }
        #endif
            ~E() throw(char) { }
        };

        
        class F : public A, public E
        {
        public:
            F() = default;
            F(const F&) = default;
            F& operator=(const F&) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            F(F&&) = default;
            F& operator=(F&&) = default;
        #endif
            ~F() = default;
        };
        
        
        class G : public A, public E
        {
        public:
            G() throw(int, char) = default;
            G(const G&) throw(int, char) = default;
            G& operator=(const G&) throw(int, char) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            G(G&&) throw(int, char) = default;
            G& operator=(G&&) throw(int, char) = default;
        #endif
            ~G() throw(int, char) = default;
        };

     }
     
     void test()
     {
        {
            using ns_single::B;
            B b1;
            B b2(b1);
            b2 = b1;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            B b3(prvalue<B>());
            b3 = prvalue<B>();
        #endif
            b1.~B();
        }
        {
            using ns_single::C;
            C c1;
            C c2(c1);
            c2 = c1;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            C c3(prvalue<C>());
            c3 = prvalue<C>();
        #endif
            c1.~C();
        }
     }
}

namespace case2
{
    template <class T>
    class A
    {
    public:
        A() throw(int) {}
        A(const A&) throw(int) {}
        A& operator=(const A&) throw(int) { return *this; }
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
        A(A&&) throw(int) {}
        A& operator=(A&&) throw(int) { return *this; }
    #endif
        ~A() throw(int) {}
    };

    
    namespace ns_single
    {
        
        template <class T>
        class B : public A<T>
        {
        public:
            B() = default;
            B(const B&) = default;
            B& operator=(const B&) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            B(B&&) = default;
            B& operator=(B&&) = default;
        #endif
            ~B() = default;
        };
        
        
        template <class T>
        class C : public A<T>
        {
        public:
            C() throw(int) = default;
            C(const C&) throw(int) = default;
            C& operator=(const C&) throw(int) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            C(C&&) throw(int) = default;
            C& operator=(C&&) throw(int) = default;
        #endif
            ~C() throw(int) = default;
        };

    }

    
    namespace ns_multiple
    {
        template <class T>
        class E
        {
        public:
            E() throw(char) {}
            E(const E&) throw(char) {}
            E& operator=(const E&) throw(char) { return *this; }
    #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            E(E&&) throw(char) {}
            E& operator=(E&&) throw(char) { return *this; }
    #endif
            ~E() throw(char) { }
        };

        
        template <class T>
        class F : public A<T>, public E<T>
        {
        public:
            F() = default;
            F(const F&) = default;
            F& operator=(const F&) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            F(F&&) = default;
            F& operator=(F&&) = default;
        #endif
            ~F() = default;
        };
        
        
        template <class T>
        class G : public A<T>, public E<T>
        {
        public:
            G() throw(int, char) = default;
            G(const G&) throw(int, char) = default;
            G& operator=(const G&) throw(int, char) = default;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            G(G&&) throw(int, char) = default;
            G& operator=(G&&) throw(int, char) = default;
        #endif
            ~G() throw(int, char) = default;
        };

     }
     
     void test()
     {
        {
            using ns_single::B;
            B<long> b1;
            B<long> b2(b1);
            b2 = b1;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            B<long> b3(prvalue< B<long> >());
            b3 = prvalue< B<long> >();
        #endif
            b1.~B<long>();
        }
        {
            using ns_single::C;
            C<long> c1;
            C<long> c2(c1);
            c2 = c1;
        #ifdef _HAS_CXX11_MOVE_SPECIAL_MEMBER_FUNCTIONS
            C<long> c3(prvalue< C<long> >());
            c3 = prvalue< C<long> >();
        #endif
            c1.~C<long>();
        }
     }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
