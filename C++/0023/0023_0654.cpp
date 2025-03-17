#include <cassert>
#include <type_traits>

template <class T> 
class eval{int mem;};

template <class T> 
class F{int mem;};

template <template <typename> class T, class T1>
class eval<T<T1>> { int mem;};

template <template <class> class T, class T1>
void f(eval<T<T1>>& p) 
{
    assert(true == (std::is_same<eval<F<int>>&, decltype(p)>::value));
};

template <template<typename B> class T,class T1>
void g(T<T1>& p)
{
     assert(true == (std::is_same<eval<int>&, decltype(p)>::value));
}

int main()
{   
    eval<int> e;
    g(e);      
    eval<F<int>> a;
    f(a);
}

