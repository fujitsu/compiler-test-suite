#include <cassert>
#include <typeinfo>

struct Foo
{
    const int i;
    volatile char c;
    double d;
    const double *p = &d;
};

int main()
{
    Foo f { 1, 'a', 2.3};
    auto [ i, c, d, p ] = f;
    assert(i == 1);
    assert(c == 'a');
    assert(d == 2.3);
    assert(*p == 2.3);
    assert(typeid(p) == typeid(const double*));
    return 0;
}