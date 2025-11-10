#include "public3/004.h"
#include <initializer_list>

#define _CXX11_NOEXCEPT throw()

void* operator new[](std::size_t, void* __p, void*) _CXX11_NOEXCEPT {return __p;}

class X
{
public:
    X(std::initializer_list<int>){}
    X(double){}
    X(){}
};

X x[2] = {};

void test()
{
    
    new X[2]{};
    

    
    new (x, 0) X[2]{};
    
}

PASS_CASE_MAIN_FUNCTION
