



#include <functional>
#include <cassert>

struct A
{
    double data_;
};

template <class F>
void
test(F f)
{
    {
    A a;
    f(a) = 5;
    assert(a.data_ == 5);
    A* ap = &a;
    f(ap) = 6;
    assert(a.data_ == 6);
    const A* cap = ap;
    assert(f(cap) == f(ap));
    const F& cf = f;
    assert(cf(ap) == f(ap));
    }
}

int main()
{
    test(std::mem_fn(&A::data_));
}
