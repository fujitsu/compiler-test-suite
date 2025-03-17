#include <cassert>

class T
{
    public :
        static constexpr int mem  = 1;
        static const constexpr int mem1 = 2;
        static volatile constexpr int mem2 = 3;

};

const int T::mem ;
const int T::mem1 ;
const volatile int T::mem2 ;

int main()
{
    assert(T::mem == 1);
    assert(T::mem1 == 2);
    assert(T::mem2 == 3);
}
