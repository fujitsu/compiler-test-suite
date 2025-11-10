#include "public3/004.h"

namespace case1
{
    template <class ...Types>
    class A
    {
    public:
        void mf();
        class mc;
        enum class me;
        static int sdm;
        template <class T> void mft();
        template <class T> class mct;
        template <class ..._Types> void mfvt();
        template <class ..._Types> class mcvt;
        template <int ...args> void mfvit();
        template <int ...args> class mcvit;
    };

    template <class ...Types>
        void A<Types...>::mf() {}

    template <class ...Types>
        class A<Types...>::mc {};

    template <class ...Types>
        enum class A<Types...>::me {};

    template <class ...Types>
        int A<Types...>::sdm = 1;

    template <class ...Types>
        template <class T>
            void A<Types...>::mft() {}

    template <class ...Types>
        template <class T>
            class A<Types...>::mct {};

    template <class ...Types>
        template <class ..._Types>
            void A<Types...>::mfvt() {}

    template <class ...Types>
        template <class ..._Types>
            class A<Types...>::mcvt {};

    template <class ...Types>
        template <int ...args>
            void A<Types...>::mfvit() {}

    template <class ...Types>
        template <int ...args>
            class A<Types...>::mcvit {};
    
    template <template <class ...> class T, class ...Types>
    void instantiate()
    {
        T<Types...> t;
        
        t.mf();
        
        typename T<Types...>::mc _mc;
        
        typename T<Types...>::me _me;
        
        T<Types...>::sdm++;
        assert(T<Types...>::sdm == 2);
        
        t.template mft<int>();
        
        typename T<Types...>::template mct<int> _mct;

        t.mfvt();
        t.template mfvt<>();
        t.template mfvt<int>();
        t.template mfvt<int, bool>();
        
        typename T<Types...>::template mcvt<> _mcvt0;
        typename T<Types...>::template mcvt<int> _mcvt1;
        typename T<Types...>::template mcvt<int, bool> _mcvt2;
        
        t.mfvit();
        t.template mfvit<>();
        t.template mfvit<0>();
        t.template mfvit<1, 2>();
        
        typename T<Types...>::template mcvit<> _mcvit0;
        typename T<Types...>::template mcvit<0> _mcvit1;
        typename T<Types...>::template mcvit<1, 2> _mcvit2;
    }
    
    void test()
    {
        instantiate<A>();
        instantiate<A, int>();
        instantiate<A, int, bool>();
    }
}

namespace case2
{
    template <int ...args>
    class B
    {
    public:
        void mf();
        class mc;
        enum class me;
        static int sdm;
        template <class T> void mft();
        template <class T> class mct;
        template <class ...Types> void mfvt();
        template <class ...Types> class mcvt;
        template <int ..._args> void mfvit();
        template <int ..._args> class mcvit;
    };

    template <int ...args>
        void B<args...>::mf(){}

    template <int ...args>
        class B<args...>::mc {};
        
    template <int ...args>
        int B<args...>::sdm = 1;
        
    template <int ...args>
        template <class T>
            void B<args...>::mft(){}
            
    template <int ...args>
        template <class T>
            class B<args...>::mct {};
            
    template <int ...args>
        template <class ...Types>
            void B<args...>::mfvt() {}
            
    template <int ...args>
        template <class ...Types>
            class B<args...>::mcvt {};
            
    template <int ...args>
        template <int ..._args>
            void B<args...>::mfvit() {}
            
    template <int ...args>
        template <int ..._args>
            class B<args...>::mcvit {};

    template <template <int ...> class T, int ...args>
    void instantiate()
    {
        T<args...> t;
        
        t.mf();
        
        typename T<args...>::mc _mc;
        
        typename T<args...>::me _me;
        
        T<args...>::sdm++;
        assert(T<args...>::sdm == 2);
        
        t.template mft<int>();
        
        typename T<args...>::template mct<int> _mct;

        t.mfvt();
        t.template mfvt<>();
        t.template mfvt<int>();
        t.template mfvt<int, bool>();
        
        typename T<args...>::template mcvt<> _mcvt0;
        typename T<args...>::template mcvt<int> _mcvt1;
        typename T<args...>::template mcvt<int, bool> _mcvt2;
        
        t.mfvit();
        t.template mfvit<>();
        t.template mfvit<0>();
        t.template mfvit<1, 2>();
        
        typename T<args...>::template mcvit<> _mcvit0;
        typename T<args...>::template mcvit<0> _mcvit1;
        typename T<args...>::template mcvit<1, 2> _mcvit2;
    }

    void test()
    {
        instantiate<B>();
        instantiate<B, 0>();
        instantiate<B, 1, 2>();
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
