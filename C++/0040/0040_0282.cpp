#include "public2/004.h"

struct X
{
    int data;
    X(int v) : data(v) {}
};

X operator "" _x1(unsigned long long) { return X(1); }
X operator "" _x1(const char*) { return X(2); }

template <char...>
X operator "" _x2() { return X(2); }

namespace N
{
    X operator "" _x1(const char*) { return X(3); }
    
    template <char...>
    X operator "" _x2() { return X(4); }
}

inline int operator "" _n1(const char*) { return 0; }
static int operator "" _n2(const char*) { return 0; }
constexpr int operator "" _n3(char) { return 0; }
extern int operator "" _n3(const char*);

template <char...>
inline int operator "" _n4() { return 0; }
template <char...>
static int operator "" _n5() { return 0; }
template <char...>
constexpr int operator "" _n6() { return 0; }

void test()
{
    
    assert((operator "" _x1(1284L).data) == 1);
    assert((operator "" _x1("123").data) == 2);
    assert((operator "" _x2<'1', 2, true>().data) == 2);
    assert((N::operator "" _x1("123").data) == 3);
    assert((N::operator "" _x2<'1', 2, true>().data) == 4);
    
    
    int(*pf)(const char*);
    pf = operator "" _n1;
    (void)pf;
    pf = operator "" _n2;
    (void)pf;
}

PASS_CASE_MAIN_FUNCTION
