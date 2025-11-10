#include "public3/004.h"
#include "public3/005.h"
#include <initializer_list>

template<class T, class U>
void f(std::initializer_list<U>)
{
    static_assert((is_same<T, U>::value), "error");
}

class A
{
public:
    A(){}
};

void test()
{
    f<int>({1, 2, 3}); 
    A a1;
    const A& a2 = a1;
    A&& a3 = static_cast<A&&>(a1);
    f<A>({a1, a2, a3}); 
}

PASS_CASE_MAIN_FUNCTION
