

#include "public3/004.h"

struct Iterator
{
    explicit Iterator(int v) :value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};

namespace case1
{
    class __Container
    {
        static int min, max;
    public:
        Iterator begin() { return Iterator(min); }
        static Iterator end() { return Iterator(max + 1); }
    };
    int __Container::min = 1, __Container::max = 5;

    class Container1 : public __Container {};

    void test()
    {
        int sum = 0;
        Container1 c1;
        for (int i : c1)
            sum += i;
        assert(sum == 15);
    }
}

namespace case2
{
    class __Container
    {
    protected:
        int min, max;
    public:
        __Container(int a, int b) :min(a), max(b) {}
        Iterator begin() { return Iterator(min); }
    };

    class Container : public __Container
    {
    public:
        Container(int a, int b) : __Container(a, b) {}
        Iterator end() { return Iterator(max + 1); }
    };

    void test()
    {
        int sum = 0;
        Container c(1, 5);
        for (int i : c)
            sum += i;
        assert(sum == 15);
    }
}

namespace case3
{
    class __Container1
    {
        int min;
    public:
        __Container1(int a) : min(a) {}
        Iterator begin() { return Iterator(min); }
    };

    class __Container2
    {
        int max;
    public:
        __Container2(int b) : max(b) {}
        Iterator end() { return Iterator(max + 1); }
    };

    class Container : public __Container1, public __Container2
    {
    public:
        Container(int a, int b) : __Container1(a), __Container2(b) {}
    };

    void test()
    {
        int sum = 0;
        Container c(1, 5);
        for (int i : c)
            sum += i;
        assert(sum == 15);
    }
}

void test()
{
    case1::test();
    case2::test();
    case3::test();
}

PASS_CASE_MAIN_FUNCTION
