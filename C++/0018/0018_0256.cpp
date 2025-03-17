











#include <memory>
#include <cassert>

struct A
{
};

template <class T>
struct Deleter
{
    void operator()(T* p) {delete p;}
};

int main()
{
    {
    const std::unique_ptr<A, Deleter<A> > p1(new A);
    const std::unique_ptr<A, Deleter<A> > p2(new A);
    assert(!(p1 == p2));
    assert(p1 != p2);
    }
}
