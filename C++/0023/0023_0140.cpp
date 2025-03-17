#include <cassert>
#include <type_traits>

int main()
{

    {
        void (*p)(){};
        void (**q)() = &p; 
        assert(true == (std::is_same<decltype(q), decltype(&p)>::value));

        void (*pp)() noexcept {}; 
        void (*qq)() noexcept = pp; 
        assert(true == (std::is_same<decltype(qq), decltype(pp)>::value));

        assert(false == (std::is_same<decltype(p), decltype(pp)>::value));
        
        const void (*p1)(){};
        const void (**q1)() = &p1;
        assert(true == (std::is_same<decltype(q1), decltype(&p1)>::value));
        
        const void (*pp1)() noexcept {};
        const void (*qq1)() noexcept = pp1;
        assert(true == (std::is_same<decltype(qq1), decltype(pp1)>::value));
        
        assert(false == (std::is_same<decltype(p1), decltype(pp1)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p1)>::value));
        
        volatile void (*p2)(){};
        volatile  void (**q2)() = &p2;
        assert(true == (std::is_same<decltype(q2), decltype(&p2)>::value));

        volatile void (*p3)() noexcept {};
        volatile  void (*q3)() noexcept = p3;
        assert(true == (std::is_same<decltype(q3), decltype(p3)>::value));
        
        assert(false == (std::is_same<decltype(p2), decltype(p3)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p2)>::value));
    }

    {
        int (*p)(){};
        int (**q)() = &p;
        assert(true == (std::is_same<decltype(q), decltype(&p)>::value));

        int (*pp)() noexcept {};
        int (*qq)() noexcept = pp;
        assert(true == (std::is_same<decltype(qq), decltype(pp)>::value));

        assert(false == (std::is_same<decltype(p), decltype(pp)>::value));
        
        const int (*p1)(){}; 
        const int (**q1)() = &p1;
        assert(true == (std::is_same<decltype(q1), decltype(&p1)>::value));

        const int (*p2)() noexcept {};
        const int (*q2)() noexcept= p2;
        assert(true == (std::is_same<decltype(q2), decltype(p2)>::value));

        assert(false == (std::is_same<decltype(p2), decltype(p1)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p1)>::value));

        volatile int (*p3)(){};
        volatile int (**q3)() = &p3;
        assert(true == (std::is_same<decltype(q3), decltype(&p3)>::value));

        volatile int (*p4)() noexcept {};
        volatile int (*q4)() noexcept = p4;
        assert(true == (std::is_same<decltype(q4), decltype(p4)>::value));
        
        assert(false == (std::is_same<decltype(p4), decltype(p3)>::value));
        assert(false == (std::is_same<decltype(p), decltype(p3)>::value));
    }



}
