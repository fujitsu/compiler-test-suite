#include "public3/004.h"

namespace N
{
    class Outer {};

    inline namespace M
    {
        inline namespace O1
        {
            class Inner {};
            void fio(Outer) {}
        }
        inline namespace O2
        {
            void fii(Inner) {}
        }
        void foi1(Inner) {}
    }
    
    void foi2(Inner) {}
}

void test()
{
    N::Outer no;
    N::Inner ni;
    fio(no);
    foi1(ni);
    foi2(ni);
    fii(ni);
}

namespace N
{
    inline namespace M
    {
        inline namespace O
        {
            template <class T> class X {};
        }
        
        template class X<char>;
        
        template <> class X<short> {};
    }
    
    template class X<int>;
    
    template <> class X<long> {};
}

namespace N
{
    int x = 1;
    class Y;
    inline namespace M
    {
        int x = 2;
        class Y;
        inline namespace O
        {
            int x = 3;
            class Y {};
        }
    }
}

int xx = N::M::O::x;
N::M::O::Y y;

PASS_CASE_MAIN_FUNCTION
