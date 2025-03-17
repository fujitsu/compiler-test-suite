#include <cassert>
#include <type_traits>

template <class T> 
struct eval;

template <class T1> 
struct A
{
    int mem;
};

template <template <typename T> class TT, class T1>
struct eval<TT<T1>>
{
  void checkA()
  {
       assert(true == (std::is_same<TT<T1>, A<float>>::value));
  }
};

int main()
{
  eval<A<float>> eA;
  eA.checkA();
}
