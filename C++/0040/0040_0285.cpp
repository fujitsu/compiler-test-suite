#include "public1/004.h"
#include "public1/005.h"

namespace case1
{
    template<typename...> struct Tuple {};
    template<typename T1, typename T2> struct Pair {};

    template<class ... Types1>
    struct zip
    {
        template<class ... Types2>
        struct with
        {
            typedef Tuple< Pair<Types1, Types2> ... > type1;
            typedef Tuple< Pair<Types1, Tuple<Types1..., Types2> > ... > type2;
        };
    };

    void test()
    {
        typedef zip<short, int>::with<unsigned short, unsigned>::type1 T1;
        typedef zip<short, int>::with<unsigned short, unsigned>::type2 T2;

        typedef Tuple< Pair<short, unsigned short>, Pair<int, unsigned> >  T3;
        typedef Tuple<
                       Pair<short, Tuple<short, int, unsigned short> >, 
                       Pair<int, Tuple<short, int, unsigned> >
                     > T4;

        assert_true((is_same<T1, T3>::value));
        assert_true((is_same<T2, T4>::value));
    }
}

namespace case2
{
    template<class ... Types>
    void f(Types ... args) {}

    template<class ... Types>
    int h(Types ... args) { return 0; }

    template<class ... Types>
    void g(Types ... args)
    {
        f(const_cast<const Types*>(&args)...);
        f(5 + args ...);
        f(args + sizeof...(args) + 5 * 2 ...);
        f(h(args ...) + args ...);
        f(args + h(args + h(args...) ...)  ...);
    }

    void test()
    {
        g();
        g(0);
        g(1, 2.0);
        g(2, 2.0, 'c');
    }
}

void test()
{
    case1::test();
    case2::test();
}

PASS_CASE_MAIN_FUNCTION
