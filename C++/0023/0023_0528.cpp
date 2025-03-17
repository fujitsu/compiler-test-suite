#include <cassert>
#include <typeinfo>

int main()
{
    int arr[3] = {1, 2, 3};
    volatile auto [i, c, d] = arr;
    assert(i == arr[0]);
    assert(c == arr[1]);
    assert(d == arr[2]);
    assert(typeid(i) == typeid(volatile int)&&typeid(c) == typeid(volatile int)&&typeid(d) == typeid(volatile int)); 
    return 0;
}