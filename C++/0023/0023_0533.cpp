#include <cassert>

struct Foo
{
    const int i;
    char c;
    double d;
    double *p = &d;
};

int main()
{
    Foo f { 1, 'a', 2.3};
    auto [ i, c, d, p ] = f;
    assert(i == 1);
    assert(c == 'a');
    assert(d == 2.3);
    assert(*p == 2.3);
    return 0;
}