#include "public3/004.h"
#include <initializer_list>

int count = 0;

class X
{
public:
    X(){ assert(count++ == 0); }
    X(std::initializer_list<int>){ assert(count++ == 1); }
};

template <class T>
class Y
{
public:
    static X x;
};

template<> X Y<bool>::x;
template<> X Y<bool>::x = {};
template<> X Y<char>::x = {1, 2, 3};

void test() {}

PASS_CASE_MAIN_FUNCTION
