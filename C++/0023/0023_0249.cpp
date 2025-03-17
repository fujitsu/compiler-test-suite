#include <cassert>

namespace A
{
    class T
    {
        public :
            const static int mem1 = 1;
            volatile static int mem2 ;

    };

    volatile int T::mem2;
    const int T::mem1;
}
int main()
{
    assert(A::T::mem1 == 1);
    assert(A::T::mem2 == 0);
}
