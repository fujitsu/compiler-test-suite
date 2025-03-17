#include <cassert>
#include <type_traits>

template <class T> 
class eval
{
    int mem;
};

template <class T,class ...A> 
class F
{
    int mem;
};

template <template <class, class...> class T, class T1, class... Rest>
class eval<T<T1, Rest...>>
{
   int mem;
};

template <template <typename, typename...> class T, class T1, class... Rest>
void f(eval<T<T1, Rest...>>& a)
{
     assert(true == (std::is_same<eval<F<int,int>> &,decltype(a)>::value));
};
template <template <class, class...> class T, class T1, class... Rest>
void f1(eval<T<T1, Rest...>>& a)
{
    assert(true == (std::is_same<eval<F<int>> &,decltype(a)>::value));
}

template <template <class, class...> class T, class T1, class... Rest>
void f2(eval<T<T1, Rest...>>& a)
{
    assert(true == (std::is_same<eval<F<int,double,int>> &,decltype(a)>::value));
}
int main()
{   
    eval<F<int,int>> a;
    f(a);
    eval<F<int>> b;
    f1(b);
    eval<F<int,double,int>> c;
    f2(c);

}

