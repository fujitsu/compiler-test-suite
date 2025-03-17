#include <cassert>
#include <typeinfo>

struct Foo
{
    const int i;
    volatile char c;
    double d;
    double *p = &d;
};

int main()
{
    Foo f { 1, 'a', 2.3};
    const auto [ i, c, d, p ] = f;
    assert(i == 1);
    assert(c == 'a');
    assert(d == 2.3);
    assert(*p == 2.3);
    assert(typeid(i) == typeid(const int)&&typeid(c) == typeid(const volatile char)&&typeid(d) == typeid(const double));
    assert(typeid(p) == typeid(double* const));
    return 0;
}