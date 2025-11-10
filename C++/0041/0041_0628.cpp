#include "public3/004.h"

void test()
{
    int arr[5] = {1, 2, 3, 4, 5};
    int sum = 0;

    for(int i : arr)
        sum += i;
    assert(sum == 15);

    for(int& i : arr)
        i *= 2;
    for(int i = 0; i < 5; i++)
        assert(arr[i] == (i+1)*2);

    for(char i : arr)
        ;
    for(float i : arr)
        ;
    struct X { X(int) {} };
    for(X i : arr)
        ;
    for(auto i : arr)
        ;

    struct B {};
    struct D : public B {};
    D arr2[5];
    for (B& rb : arr2)
        ;
}

PASS_CASE_MAIN_FUNCTION
