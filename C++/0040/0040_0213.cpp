

#include "public1/004.h"

struct Iterator
{
    explicit Iterator(int v) :value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};

class __Container
{
protected:
    int min, max;
public:
    __Container(int a, int b) :min(a), max(b) {}
    virtual Iterator begin() = 0;
    virtual Iterator   end() = 0;
};

class Container : public __Container
{
public:
    Container(int a, int b) : __Container(a, b) {}
    Iterator begin() { return Iterator(min); }
    Iterator   end() { return Iterator(max + 1); }
};

void test()
{
    int sum = 0;
    Container c(1, 5);
    __Container& rc = c;
    for (int i : rc)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
