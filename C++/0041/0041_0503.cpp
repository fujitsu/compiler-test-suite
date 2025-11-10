#include "public3/004.h"
#include <initializer_list>

class X
{
public:
    int size;

    X(std::initializer_list<int> il) : size(il.size())
    {
        if (!size)
            return;
        const int *iter = il.begin();
        int start = *iter;
        for (; iter != il.end(); ++iter)
            assert(*iter == start++);
    }
};

template <int...args>
void f()
{
    X x1 {args...};
    assert((x1.size == sizeof...(args)));
    X x2 = {args...,};
    assert((x2.size == sizeof...(args)));
    X x3 {0, args...};
    assert((x3.size == sizeof...(args) + 1));
    X x4 = {0, args..., 4, 5};
    assert((x4.size == sizeof...(args) + 3));
}

template <class ...Types>
void g(Types ...args)
{
    X x1 {args...};
    assert((x1.size == sizeof...(args)));
    X x2 = {args...,};
    assert((x2.size == sizeof...(args)));
    X x3 {0, args...};
    assert((x3.size == sizeof...(args) + 1));
    X x4 = {0, args..., 4, 5};
    assert((x4.size == sizeof...(args) + 3));
}

template <int...args>
class Y
{
    X x;
public:
    Y() : x{0, args..., 4} {}
};

template <class ...Types>
class Z
{
    X x;
public:
    Z(Types ...args) : x{0, args..., 4} {}
};

void test()
{
    f<1, 2, 3>();
    g((char)1, (short)2, (unsigned char)3);
    Y<1, 2, 3> y;
    Z<char, short, int> z1(1, 2, 3);
}

PASS_CASE_MAIN_FUNCTION
