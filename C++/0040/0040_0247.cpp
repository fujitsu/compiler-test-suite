#include "public1/004.h"

template <class T>
class A
{
public:
    enum E1 : T;
    enum class E2 : T;
};

template <class T>
enum A<T>::E1 : T { e1, e2 };

template <class T>
enum class A<T>::E2 : T { e1 = 2, e2 };

void test()
{
    assert(static_cast<int>(A<char>::e1) == 0);
    assert(static_cast<int>(A<char>::e2) == 1);
    assert(static_cast<int>(A<char>::E2::e1) == 2);
    assert(static_cast<int>(A<char>::E2::e2) == 3);
}

PASS_CASE_MAIN_FUNCTION
