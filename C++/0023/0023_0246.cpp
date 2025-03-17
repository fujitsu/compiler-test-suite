#include <cassert>

class T
{
    public :
        static inline  int mem;
        static const inline int mem1 = 0;
        static volatile inline int mem2;

};

int main()
{
    assert(T::mem == 0);
    assert(T::mem1 == 0);
    assert(T::mem2 == 0);
}
