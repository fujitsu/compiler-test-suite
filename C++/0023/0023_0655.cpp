#include <cassert>
#include <type_traits>

template <int T> 
class F{int mem;};

template <class T> 
class eval{int mem;};

template <template <int A> class T,int T1> 
class eval<T<T1>>{int mem;};

template <template <int A> class T,int T1> 
void f(eval<T<T1>>& p)
{
   assert(true == (std::is_same<eval<F<17>> &, decltype(p)>::value));
}

template <template<int B> class T,int T1> 
void g(T<T1>&p)
{
   assert(true == (std::is_same<F<17> &, decltype(p)>::value));
}

int main()
{   
    F<17> e;
    g(e);
    eval<F<17>> v;
    f(v);
}
