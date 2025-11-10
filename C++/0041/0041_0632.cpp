

#include "public3/004.h"

#include <iterator>

struct Iterator
{
    explicit Iterator(int v) :value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};

class Container
{
public:
    Container(int a, int b) : begin(a), end(b+1) {}

    class inner
    {
        int value;
    public:
        inner(int v) : value(v) {}
        Iterator operator()()
        {
            return Iterator(value);
        }
    };

    inner begin, end;
};

void test()
{
    int sum = 0;
    Container c(1, 5);
    for (int i : c)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
