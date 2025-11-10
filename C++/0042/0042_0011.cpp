#include "./004.h"
#include "./005.h"

template <class T, class U>
char (&__test(int))[sizeof(declval<T>() + declval<U>())]; 

template <class, class>
char __test(...);

class A;
class B { char __[2]; };
extern B operator+ (B, B);

void test()
{
    assert_true(sizeof(__test<int, double>(0)) == sizeof(double));
    assert_true(sizeof(__test<A, A>(0)) == sizeof(char));
    assert_true(sizeof(__test<B, B>(0)) == sizeof(B));
}

PASS_CASE_MAIN_FUNCTION
