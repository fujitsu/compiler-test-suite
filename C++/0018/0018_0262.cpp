





#include <memory>
#include <cassert>

struct A
{
    static int count;
    A() {++count;}
    A(const A&) {++count;}
    ~A() {--count;}
};

int A::count = 0;

int main()
{
    {
    std::unique_ptr<A[]> p(new A[3]);
    assert(A::count == 3);
    A* i = p.get();
    static_assert(noexcept(p.get()),"");
    assert(i != nullptr);
    p.reset();
    assert(A::count == 0);
    assert(p.get() == 0);
    }
    assert(A::count == 0);
    {
    std::unique_ptr<A[]> p(new A[4]);
    assert(A::count == 4);
    A* i = p.get();
    assert(i != nullptr);
    p.reset(new A[5]);
    assert(A::count == 5);
    }
    assert(A::count == 0);
}
