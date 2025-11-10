#include "public3/004.h"
#include "public3/005.h"

template <class ...Types, class T>
void f(T) { assert_true((is_same<T, double>::value)); }

template <class ...Types, class T = double>
void g() { assert_true((is_same<T, double>::value)); }

template <class X, class Y, class ...Types>
void h(Y) { assert_true((sizeof...(Types) == 0)); }

template<class ... Types>
void i(Types ... values) {}

template<class>
    struct X : public false_type {};
template<class R, class ... Types>
    struct X<R(int, Types...)> : public true_type { };

template<class ... Types>
    struct Y : public false_type { };
template<class T, class ... Types>
    struct Y<T, Types& ...> : public true_type { };

void test()
{
    f<>(3.14);          
    f<char, int>(0.0);  

    g<>();              
    g<char, int>();     
    
    h<int>(3.14);           
    h<int>(h<int, double>); 
    
    i<int*, float*>(0, 0, 0); 
    
    assert_true((X<int(bool)>::value == false));
    assert_true((X<int(int)>::value == true));
    assert_true((X<int(int, bool)>::value == true));
    
    assert_true((Y<int>::value == true));
    assert_true((Y<int, float>::value == false));
    assert_true((Y<int, const float&>::value == true));
}

PASS_CASE_MAIN_FUNCTION
