

#include "public1/004.h"

struct Iterator
{
    explicit Iterator(int v) :value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};


namespace M
{
    class Container
    {
    public:
        int min, max;
        Container(int a, int b) :min(a), max(b) {}
    };

    Iterator begin(const Container& c) { return Iterator(c.min); }
    Iterator   end(const Container& c) { return Iterator(c.max + 1); }
}


namespace __N
{
    class __Container
    {
    public:
        int min, max;
        __Container(int a, int b) : min(a), max(b) {}
    };
    Iterator begin(const __Container& c) { return Iterator(c.min); }
    Iterator   end(const __Container& c) { return Iterator(c.max + 1); }
}
namespace N
{
    class Container : public __N::__Container
    {
    public:
        Container(int a, int b) : __N::__Container(a, b) {}
    };
}


namespace O
{
    template <class T>
    class __Container;
    namespace __O
    {
        struct X {};
        Iterator begin(const __Container<X>& c) { return Iterator(1); }
        Iterator   end(const __Container<X>& c) { return Iterator(5+1); }
    }
    template <>
    class __Container<__O::X> {};
    typedef __Container<__O::X> Container;
}
namespace P
{
    template <class T>
    class __Container;
    namespace __P
    {
        template <class U>
        struct X {};
        namespace ____P
        {
            struct Y {};
            Iterator begin(const __Container< X<Y> >& c) { return Iterator(1); }
            Iterator   end(const __Container< X<Y> >& c) { return Iterator(5+1); }
        }
    }
    template <>
    class __Container<__P::X<__P::____P::Y> > {};
    typedef __Container<__P::X<__P::____P::Y> > Container;
}


namespace Q
{
    template <template <class> class T>
    class __Container;
    namespace __Q
    {
        template <class T>
        class X {};
        Iterator begin(const __Container<X>& c) { return Iterator(1); }
        Iterator   end(const __Container<X>& c) { return Iterator(5+1); }
    }
    template <>
    class __Container<__Q::X> {};
    typedef __Container<__Q::X> Container;
}

void test()
{
    int sum = 0;

    M::Container mc(1, 5);
    for (int i : mc)
        sum += i;
    assert(sum == 15);

    sum = 0;
    N::Container nc(1, 5);
    for (int i : nc)
        sum += i;
    assert(sum == 15);
    
    sum = 0;
    O::Container oc;
    for (int i : oc)
        sum += i;
    assert(sum == 15);

    sum = 0;
    P::Container pc;
    for (int i : pc)
        sum += i;
    assert(sum == 15);

    sum = 0;
    Q::Container qc;
    for (int i : qc)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
