#include "public3/004.h"
#include "public3/005.h"


namespace case1
{
    template <int ...> class A {};
    template <int ...args> class B {};
    template <int (*...pfs)(double)> class C {};
    template <int (*...pfs)(int...)> class D {};
    template <char (&...arrs)[5]> class E {};
    template <class T, int (T::*...pmfs)(double)> class F {};
    template <class T, int (T::*...pmfs)(char...)> class G {};
    template <class T, int T::*...> class H {};
    
    int f(double) { return 0; }
    int g(double) { return 0; }
    int h(int, ...) { return 0; }
    
    char arr1[5] = {0}, arr2[5] = {0};
    
    class M
    {
    public:
        int f(double) { return 0; }
        int g(double) { return 0; }
        int h(char, ...) { return 0; }
        int a, b;
    };

    void test()
    {
        A<> a0;
        A<0> a1;
        A<0, 1> a2;
        
        B<> b0;
        B<0> b1;
        B<0, 1> b2;
        
        C<> c0;
        C<f> c1;
        C<f, g> c2;

        D<> d0;
        D<h> d1;
        D<h, h> d2;
        
        E<> e0;
        E<arr1> e1;
        E<arr1, arr2> e2;
        
        F<M> f0;
        F<M, &M::f> f1;
        F<M, &M::f, &M::g> f2;

        G<M> g0;
        G<M, &M::h> g1;
        G<M, &M::h, &M::h> g2;
        
        H<M> h0;
        H<M, &M::a> h1;
        H<M, &M::a, &M::b> h2;
    }
}


namespace case2
{
    template <class ...> class A {};
    template <class ... Types> class B {};
    template <typename ...> class C {};
    template <typename ... Types> class D {};
    
    template <template <class...> class T>
    void instantiate()
    {
        T<> t0;
        T<int> t1;
        T<bool, char> t2;
    }

    void test()
    {
        instantiate<A>();
        instantiate<B>();
        instantiate<C>();
        instantiate<D>();
    }
}


namespace case3
{
    template <template<class> class ...> class A  {};
    template <template<class> class ...T> class B {};
    template <template<class...> class ...> class C {};
    template <template<class...> class ...T> class D {};
    template <template<class...> class> class E {};

    template <class> class M {};
    template <class, class> class N {};
    template <class...> class O {};

    template <template < template <class...> class ... > class T>
    void instantiate()
    {
        T<> t0;
        T<M> t1;
        T<M, M> t2;
    }

    void test()
    {
        instantiate<A>();
        instantiate<B>();
        instantiate<C>();
        instantiate<D>();

        C<M, N, O> cmno;
        D<M, N, O> dmno;
        E<M> em;
        E<N> en;
        E<O> eo;
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
