

#include "public1/004.h"

struct Iterator
{
    explicit Iterator(int v) :value(v) {}
    Iterator &operator ++() { ++value; return *this; }
    int operator *() { return value; }
    bool operator != (const Iterator &iter) { return value != iter.value; }
    int value;
};


class Container1
{
    int min, max;
public:
    Container1(int a, int b) :min(a), max(b) {}
    Iterator begin() { return Iterator(min); }
    Iterator   end() { return Iterator(max + 1); }
};


class Container2
{
    static int min, max;
public:
    Container2() {}
    static Iterator begin() { return Iterator(min); }
    static Iterator   end() { return Iterator(max + 1); }
};
int Container2::min = 1, Container2::max = 5;


class Container3
{
    static int min, max;
public:
    Container3() {}
    Iterator begin() { return Iterator(min); }
    static Iterator end() { return Iterator(max + 1); }
};
int Container3::min = 1, Container3::max = 5;


class Container4
{
    int min, max;
public:
    Container4(int a, int b) :min(a), max(b) {}
    Iterator begin(int = 0) { return Iterator(min); }
    Iterator begin(float) { return Iterator(min); }
    Iterator begin(char) { return Iterator(min); }
    Iterator end(double = 3.14) { return Iterator(max + 1); }
};

void test()
{
    int sum = 0;

    Container1 c1(1, 5);
    for (int i : c1)
        sum += i;
    assert(sum == 15);

    sum = 0;
    Container2 c2;
    for (int i : c2)
        sum += i;
    assert(sum == 15);

    sum = 0;
    Container3 c3;
    for (int i : c3)
        sum += i;
    assert(sum == 15);

    sum = 0;
    Container4 c4(1, 5);
    for (int i : c4)
        sum += i;
    assert(sum == 15);
}

PASS_CASE_MAIN_FUNCTION
