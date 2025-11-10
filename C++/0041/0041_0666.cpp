#include "public3/004.h"

#define SIZE 4
int flag = SIZE, count = 0;

struct X
{
    X(int) {}
    ~X() { flag--; }
};

struct Y
{
    Y(X = X(count)) { assert(flag == SIZE - count++); }
};

Y arr[SIZE];

void test() {}

PASS_CASE_MAIN_FUNCTION
