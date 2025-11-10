#include "public2/004.h"

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

    X x1(b);
    X x2(c);
    X x3(d);
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

    X x1 = b;
    X x2 = c;
    X x3 = d;
}

void test() {}

PASS_CASE_MAIN_FUNCTION
