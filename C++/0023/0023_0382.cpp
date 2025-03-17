#include <cassert>
#include <type_traits>

template<typename T, typename D ,typename E = int>
struct S 
{
    T data;
    D da;
    E s;   
    S(T u,D d)
    {
        data = u;
        da = d;
    }
    
    S(T u,D d,E t)
    {
        data = u;
        da = d;
        s = t;
    }
    
};

template<typename U,typename D >
S(U,D) -> S<int,double>;

template<typename U,typename D,typename E >
S(U,D,E) -> S<int,double>;

int main () 
{
    S<int,double> s(1,1.0);
    assert(true == (std::is_same<S<int,double>, decltype(s)>::value));

    S<int,double,double> x{1,1.0,1.0};
    assert(true == (std::is_same<S<int, double,double>, decltype(x)>::value));
}
