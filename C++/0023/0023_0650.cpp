#include <cassert>
#include <type_traits>

template <int N> 
struct C
{
    int mem;
};

template <class T> struct eval;
template <template <int A> class TT,int V>
struct eval<TT<V>>
{
    void checkC()
    {
        assert(true == (std::is_same<TT<V>,C<17>>::value));
    }
};


int main()
{
    eval<C<17>> eC;
    eC.checkC();
}
