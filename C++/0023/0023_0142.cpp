#include <cassert>
#include <type_traits>

int main()
{
    {
        int (*q)() = []()->int{ int a = 1;};
        int (*p)() noexcept = []()noexcept ->int{int a = 1;};

        int (*w)() = q;
        int (*e)() noexcept = p;
        
        assert(false == (std::is_same<decltype(q), decltype(p)>::value));
        assert(true == (std::is_same<decltype(q), decltype(w)>::value));
        assert(true == (std::is_same<decltype(e), decltype(p)>::value));

        const int (*q1)() = []()->const int{ int a = 1;};
        const int (*p1)() noexcept = []() noexcept ->const int{int a = 1;};

        const int (*w1)() = q1;
        const int (*e1)() noexcept = p1;

        assert(false == (std::is_same<decltype(q1), decltype(p1)>::value));
        assert(true == (std::is_same<decltype(q1), decltype(w1)>::value));
        assert(true == (std::is_same<decltype(e1), decltype(p1)>::value));
        assert(false == (std::is_same<decltype(q), decltype(q1)>::value));

        volatile int (*q2)() = []()->volatile int{ int a = 1;};
        volatile int (*p2)() noexcept = []() noexcept ->volatile int{int a = 1;};
        
        volatile int (*w2)() = q2;
        volatile int (*e2)() noexcept = p2;
        
        assert(false == (std::is_same<decltype(q2), decltype(p2)>::value));
        assert(true == (std::is_same<decltype(q2), decltype(w2)>::value));
        assert(true == (std::is_same<decltype(e2), decltype(p2)>::value));
        assert(false == (std::is_same<decltype(q), decltype(q2)>::value));
    }

}
