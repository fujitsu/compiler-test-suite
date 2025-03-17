#include <cassert>
#include <typeinfo>

struct Foo
{
    const int i;
    char c;
    volatile double d;
    int arr[2];
};

int main()
{
    Foo f = { 1, 'a', 2.3 ,{4,6}};
    const auto [ i, c, d ,arr] = f;
    assert(i == 1);
    assert(c == 'a');
    assert(d == 2.3);
    assert(arr[0] == 4);
    assert(arr[1] == 6);
    assert(typeid(i) == typeid(const int)&&typeid(c) == typeid(const char)&&typeid(d) == typeid(const volatile double));
    assert(typeid(arr[0]) == typeid(const int)&&typeid(arr[1]) == typeid(const int));
    return 0;
}