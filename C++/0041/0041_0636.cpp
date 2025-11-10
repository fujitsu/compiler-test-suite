

#include "public3/004.h"

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
    int min, max;
    Container(int a, int b) :min(a), max(b) {}
#if (__clang__)
    Iterator begin() { return Iterator(min); }
    Iterator   end() { return Iterator(max + 1); }
};
#else
};

namespace std
{
    Iterator begin(const Container& c) { return Iterator(c.min); }
    Iterator   end(const Container& c) { return Iterator(c.max + 1); }
}
#endif

void test()
{
    int sum = 0;

    Container c(1, 5);
    for (int i : c)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
