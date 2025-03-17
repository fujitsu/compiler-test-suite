#include <cassert>
#include <type_traits>

int main()
{
    {
        void (*q)() = [](){ int a = 1;};
        void (*p)() noexcept = []() noexcept {int a = 1;};

        void (*w)() = q;
        void (*e)() noexcept = p;
        
        assert(false == (std::is_same<decltype(q), decltype(p)>::value));
        assert(true == (std::is_same<decltype(q), decltype(w)>::value));
        assert(true == (std::is_same<decltype(e), decltype(p)>::value));

        const void (*q1)() = []()->const void{ int a = 1;};
        const void (*p1)() noexcept = []() noexcept ->const void{int a = 1;};

        const void (*w1)() = q1;
        const void (*e1)() noexcept = p1;

        assert(false == (std::is_same<decltype(q1), decltype(p1)>::value));
        assert(true == (std::is_same<decltype(q1), decltype(w1)>::value));
        assert(true == (std::is_same<decltype(e1), decltype(p1)>::value));
        assert(false == (std::is_same<decltype(q), decltype(q1)>::value));

        volatile void (*q2)() = []()->volatile void{ int a = 1;};
        volatile void (*p2)() noexcept = []() noexcept ->volatile void{int a = 1;};
        
        volatile void (*w2)() = q2;
        volatile void (*e2)() noexcept = p2;
        
        assert(false == (std::is_same<decltype(q2), decltype(p2)>::value));
        assert(true == (std::is_same<decltype(q2), decltype(w2)>::value));
        assert(true == (std::is_same<decltype(e2), decltype(p2)>::value));
        assert(false == (std::is_same<decltype(q), decltype(q2)>::value));
    }

}
