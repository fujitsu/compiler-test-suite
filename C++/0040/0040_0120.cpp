#include "public2/004.h"
#include "public2/005.h"

class X
{
    int data;
public:
    constexpr X(int v) : data(v) {}
    constexpr int get1() { return data; } 
    constexpr int get2() const { return data; } 
};

static_assert((is_same<int (X::*)() const, decltype(&X::get1)>::value), "error");
static_assert((is_same<int (X::*)() const, decltype(&X::get2)>::value), "error");

void test() {}

PASS_CASE_MAIN_FUNCTION
