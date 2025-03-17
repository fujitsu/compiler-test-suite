#include <cassert>
#include <type_traits>

template <class T1,class T2=T1> 
struct A
{
    int mem;
};

template <class T> 
struct eval;

template <template <class T,typename U=T> class TT, class T1,class T2>
struct eval<TT<T1,T2>>
{
    void checkA()
    {
        assert(true == (std::is_same<TT<T1>,A<float>>::value));
    }
    void checkA1()
    {
        assert(true == (std::is_same<TT<T1,T2>,A<float,int>>::value));
    }
};

int main()
{
  eval<A<float>> eA;
  eA.checkA();

  eval<A<float,int>> eA1;
  eA1.checkA1();
}
