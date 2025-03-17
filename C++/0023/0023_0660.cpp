#include <cassert>
#include <type_traits>

template <class T> 
struct eval;

template <class T1,class T2>
struct A
{
    int mem;
};

template <template <typename, class...> class TT, class T1, class... Rest>
struct eval<TT<T1, Rest...>> 
{
   void checkA()
   {
   assert(true == (std::is_same<TT<T1,Rest...>,A<int,float> >::value));
   }
};

int main()
{
  eval<A<int,float>> eA;
  eA.checkA();
}
