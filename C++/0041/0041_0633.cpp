

#include "public3/004.h"

#include <iterator>

struct Iterator
{
    explicit Iterator(int v) : value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};

typedef Iterator (FunType)();

class Container
{
public:
    Container(FunType* pb, FunType* pe) : begin(pb), end(pe) {}
    FunType *begin, *end;
};

Iterator begin() { return Iterator(1); }
Iterator   end() { return Iterator(6); }

void test()
{
    int sum = 0;
    Container c(begin, end);
    for (int i : c)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
