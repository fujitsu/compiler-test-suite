#include "public1/004.h"
#include "public1/005.h"

template <class T, class U, unsigned char = sizeof(T() + U())>
char __test(int);

template <class T, class U>
char (&__test(...))[2];

class A {};
class B {};
extern B operator+(B, B);

void test()
{
    assert_true(sizeof(__test<int, double>(0)) == sizeof(char));
    assert_true(sizeof(__test<A, A>(0))  == sizeof(char) * 2);
    assert_true(sizeof(__test<B, B>(0))  == sizeof(char));
}

PASS_CASE_MAIN_FUNCTION
