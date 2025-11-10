#include "public3/004.h"
#include "public3/005.h"

class X;

int i1 = 1;
constexpr int i2 = '2';
constexpr int& i3 = i1; 
constexpr int* i4 = &i1;
constexpr int*(*i5)(int) = 0;
constexpr int* (X::*i6)(int) = 0;

static_assert((is_same<decltype(i2), const int>::value), "error");
static_assert((is_same<decltype(i3), int&>::value), "error");
static_assert((is_same<decltype(i4), int* const>::value), "error");
static_assert((is_same<decltype(i5), int*(* const)(int)>::value), "error");


namespace ns_test
{
    int i1 = 1;
    constexpr int i2 = false;
    constexpr int& i3 = i1;
    constexpr int* i4 = &i1;
    constexpr int*(*i5)(int) = 0;
    constexpr int* (X::*i6)(int) = 0;

    static_assert((is_same<decltype(i2), const int>::value), "error");
    static_assert((is_same<decltype(i3), int&>::value), "error");
    static_assert((is_same<decltype(i4), int* const>::value), "error");
    static_assert((is_same<decltype(i5), int*(* const)(int)>::value), "error");
  
}

void test()
{
    
    constexpr int i2 = 2;
    constexpr int& i3 = i1;
    constexpr int* i4 = &i1;
    constexpr int*(*i5)(int) = 0;
    constexpr int* (X::*i6)(int) = 0;

    static_assert((is_same<decltype(i2), const int>::value), "error");
    static_assert((is_same<decltype(i3), int&>::value), "error");
    static_assert((is_same<decltype(i4), int* const>::value), "error");
    static_assert((is_same<decltype(i5), int*(* const)(int)>::value), "error");
    
}

PASS_CASE_MAIN_FUNCTION
