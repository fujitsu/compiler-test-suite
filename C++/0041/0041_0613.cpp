#include "public3/004.h"

int a = 4;
int b = 4;
int c = 4;
int d = 4;

namespace N
{
    int a = 3;
    int b = 3;
    int c = 3;
    
    void test()
    {
        const int a = 2;
        const int b = 2;

        {
            const int a = 1;
            class Y
            {
            public:
                int ya = a;
                int yb = b;
                int yc = c;
                int yd = d;

                class X
                {
                public:
                    int xa = a;
                    int xb = b;
                    int xc = c;
                    int xd = d;
                };
            };

            Y y;
            assert(y.ya == 1);
            assert(y.yb == 2);
            assert(y.yc == 3);
            assert(y.yd == 4);
            
            Y::X x;
            assert(x.xa == 1);
            assert(x.xb == 2);
            assert(x.xc == 3);
            assert(x.xd == 4);
        }
    }
}

void test()
{
    N::test();
}

PASS_CASE_MAIN_FUNCTION
