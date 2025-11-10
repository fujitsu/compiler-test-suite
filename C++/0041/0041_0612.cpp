#include "public3/004.h"

int a = 7;
int b = 7;
int c = 7;
int d = 7;
int e = 7;
int f = 7;
int g = 7;

namespace N
{
    int a = 6;
    int b = 6;
    int c = 6;
    int d = 6;
    int e = 6;
    int f = 6;

    class Z
    {
    public:
        static const int a = 5;
        static const int b = 5;
        static const int c = 5;
        static const int d = 5;
        static const int e = 5;
        
        class YB
        {
        protected:
            static const int a = 4;
            static const int b = 4;
            static const int c = 4;
            static const int d = 4;
        };

        class Y : public YB
        {
        public:
            static const int a = 3;
            static const int b = 3;
            static const int c = 3;
            
            class XB
            {
            protected:
                int a = 2;
                int b = 2;
            };

            class X : public XB
            {
                int a = 1;
            public:
                int xa = a;
                int xb = b;
                int xc = c;
                int xd = d;
                int xe = e;
                int xf = f;
                int xg = g;
            };
        };
    };
}

void test()
{
    typedef N::Z::Y::X X;
    X x;
    assert(x.xa == 1);
    assert(x.xb == 2);
    assert(x.xc == 3);
    assert(x.xd == 4);
    assert(x.xe == 5);
    assert(x.xf == 6);
    assert(x.xg == 7);
}

PASS_CASE_MAIN_FUNCTION
