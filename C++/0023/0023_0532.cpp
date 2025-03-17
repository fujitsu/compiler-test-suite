#include <cassert>

struct Foo
{
    const int i;
    char c;
    double d;
    int arr[2];
};

int main()
{
    Foo f { 1, 'a', 2.3 ,{4,6}};
    auto& [ i, c, d ,arr] = f;
    assert(f.i == 1);
    assert(f.c == 'a');
    assert(f.d == 2.3);
    assert(f.arr[0] == 4);
    assert(f.arr[1] == 6);
    return 0;
}