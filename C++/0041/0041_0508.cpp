#include "public3/004.h"
#include <initializer_list>

#define _CXX11_NOEXCEPT throw()


void* operator new (std::size_t, void* __p, void*) _CXX11_NOEXCEPT {return __p;}

class X
{
public:
    X(std::initializer_list<int>){}
};

class Y
{
public:
    Y(int, int){}
};

X x[2] = {{1, 2}, {3, 4}};
Y y[2] = {{1, 2}, {3, 4}};

void test()
{
    {
        
        new X{};
        new X({});
        new X{1, 2, 3};
        new X({1, 2, 3});

        
        new (x, 0) X{};
        new (x, 0) X({});
        new (x, 0) X{1, 2, 3};
        new (x, 0) X({1, 2, 3});

        
        new (X){};
        new (X)({});
        new (X){1, 2, 3};
        new (X)({1, 2, 3});

        
        new (x, 0) (X){};
        new (x, 0) (X)({});
        new (x, 0) (X){1, 2, 3};
        new (x, 0) (X)({1, 2, 3});
    }
    {
        
        new Y{1, 2};
        new Y({1, 2});

        
        new (y, 0) Y{1, 2};
        new (y, 0) Y({1, 2});

        
        new (Y){1, 2};
        new (Y)({1, 2});

        
        new (y, 0) (Y){1, 2};
        new (y, 0) (Y)({1, 2});
    }
}

PASS_CASE_MAIN_FUNCTION
