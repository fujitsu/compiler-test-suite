#include "public3/004.h"

template <class T, unsigned int size>
class X
{
    T *ptr;
public:
    X() : ptr(size > 1 ? new T[size] : new T()) {}
    operator T*() { return ptr; }
};

void test()
{
    X<int, 1> x1;
    X<int, 2> x2;
    delete x1;
    delete [] x2;
}

PASS_CASE_MAIN_FUNCTION
