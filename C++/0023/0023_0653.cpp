#include <cassert>
#include <type_traits>

template <class T> 
class eval{int mem;};

template <class T,class A=T> 
class F{int mem;};

template <template <typename,class> class T, class T1, class T2>
class eval<T<T1,T2>> { int mem;};

template <template <class,class> class T, class T1, class T2>
void f(eval<T<T1,T2>>& a)
{
       assert(true == (std::is_same<eval<F<int,int>>&, decltype(a)>::value));
};

template <template <typename,typename> typename T, typename T1, typename T2>
void f1(eval<T<T1,T2>>& a)
{
    assert(true == (std::is_same<eval<F<int,double>> &, decltype(a)>::value));
};

int main()
{   
    eval<F<int>> a;
    f(a);
    eval<F<int,double>> b;
    f1(b);
}

