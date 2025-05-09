





#include <functional>
#include <cassert>

class functor1
    : public std::unary_function<int, char>
{
};

template <class T>
void
test(T& t)
{
    std::reference_wrapper<T> r(t);
    T& r2 = r;
    assert(&r2 == &t);
}

void f() {}

int main()
{
    void (*fp)() = f;
    test(fp);
    test(f);
    functor1 f1;
    test(f1);
    int i = 0;
    test(i);
    const int j = 0;
    test(j);
}
