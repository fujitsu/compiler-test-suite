#include "public3/004.h"
#include <initializer_list>

unsigned int flag = 0;

struct X
{
    X(std::initializer_list<double>) { flag = 1; } 
    X(std::initializer_list<int>)    { flag = 2; } 
    X()                              { flag = 3; } 
};

struct Y
{
    Y(int, double, double){}
    Y() {}
};

class String
{
public:
    String(const char*) {}
};

template <class Key, class Value>
class Pair
{
public:
    Pair(Key, Value) {}
};

class Map
{
public:
    Map(std::initializer_list< Pair<String, int> >) {}
};

void test()
{
    
    {
        X x1 { 1.0, 2.0, 3.0 };
        assert(flag == 1);
        X x2 { 1, 2, 3 };
        assert(flag == 2);
        X x3 { };
        assert(flag == 3);

        Y y1 { 1, 2, 3.0 };
        Y y3 { };
        
        Map map {{"True", 1}, {"False", 0}};
    }

    
    {
        X x1 = { 1.0, 2.0, 3.0 };
        assert(flag == 1);
        X x2 = { 1, 2, 3 };
        assert(flag == 2);
        X x3 = { };
        assert(flag == 3);
        
        Y y1 = { 1, 2, 3.0 };
        Y y3 = { };
        
        Map map = {{"True", 1}, {"False", 0}};
    }
}

PASS_CASE_MAIN_FUNCTION
