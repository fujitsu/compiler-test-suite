#include "public2/004.h"

namespace M
{
    int a = 1;

    namespace N
    {
        int b = 2;

        
        class X
        {
        public:
            int xa = a;
            int xb = b;
        };
       
        
        class Y
        {
        public:
            class X
            {
            public:
                int xa = a;
                int xb = b;
            };
        };
 
        void test()
        {
            
            class X
            {
            public:
                int xa = a;
                int xb = b;
            };

            
            class Y
            {
            public:
                class X
                {
                public:
                    int xa = a;
                    int xb = b;
                };
            };
            
            X x;
            assert(x.xa == 3);
            assert(x.xb == 4);
            
            a++;
            b++;

            Y::X yx;
            assert(yx.xa == 4);
            assert(yx.xb == 5);
        }
    }
}

void test()
{
    M::N::X x;
    assert(x.xa == 1);
    assert(x.xb == 2);

    M::a++;
    M::N::b++;

    M::N::Y::X yx;
    assert(yx.xa == 2);
    assert(yx.xb == 3);
    
    M::a++;
    M::N::b++;

    M::N::test();
}

PASS_CASE_MAIN_FUNCTION
