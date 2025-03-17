#include <cassert>

enum E{a,b};

template<typename B>
class T
{
    public :
        static inline  E  mem = a;
        static const inline E mem1 = b;
        static volatile inline E mem2 = b;

};
int main()
{
    assert(T<int>::mem == a);
    assert(T<int>::mem1 == b);
    assert(T<int>::mem2 == b);
}
