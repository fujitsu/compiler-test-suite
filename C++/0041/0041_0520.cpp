#include "public3/004.h"
#include <initializer_list>

class X
{
    bool value;
public:
    X(std::initializer_list<int> il){ value = ( il.begin() != il.end() ? true : false ); }
    operator int() { return value; }
};

class Y
{
public:
    Y(int, int, int){ }
    operator int() { return false; }
};

void test()
{
    {
        if (X x {})
            assert(0);

        if (X x = {1, 2, 3})
            ;
        else
            assert(0);

        switch ( X x = {})
        {
            case true:
                assert(0);
        }
        switch ( X x {1, 2, 3})
        {
            case true:
                break;
            case false:
                assert(0);
        }
    }

    {
        if (Y y {1, 2, 3})
            assert(0);

        switch ( Y y = {1, 2, 3})
        {
            case true:
                assert(0);
        }
    }
}

PASS_CASE_MAIN_FUNCTION
