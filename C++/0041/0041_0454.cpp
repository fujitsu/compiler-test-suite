#include "public3/004.h"

class X {};

namespace direct_init
{
    class B
    {
    public:
        explicit operator X() { return X(); }
    } b;

    class C
    {
    public:
        explicit operator X() { return X(); }
    } c;

    class D : public B {} d;

    const X& lr1(b);
    const X& lr2(c);
    const X& lr3(d);
    X&& rr1(b);
    X&& rr2(c);
    X&& rr3(d);
}

namespace copy_init
{
    class B
    {
    public:
        operator X() { return X(); }
    } b;

    class C
    {
    public:
        operator X() { return X(); }
    } c;

    class D : public B {} d;

    const X& lr1 = b;
    const X& lr2 = c;
    const X& lr3 = d;
    X&& rr1 = b;
    X&& rr2 = c;
    X&& rr3 = d;
}

void test() {}

PASS_CASE_MAIN_FUNCTION
