#include <cassert>
#include <type_traits>

template<class ...T>
struct S 
{
  int mem;
  S(T ... t)
  {
      mem = 1;
  }
};

template<class ...U>
S(U ...) -> S<double,int,bool>;

int main () 
{
    S x{1.9,1,true};
    assert(true == (std::is_same<S<double, int,bool>, decltype(x)>::value));
}
