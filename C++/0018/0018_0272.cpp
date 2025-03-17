



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
    A* ptr = new A;
    std::shared_ptr<A> p(ptr);
    assert(A::count == 1);
    assert(p.use_count() == 1);
    assert(p.get() == ptr);
    }
    assert(A::count == 0);
    {
    A* ptr = new A;
    std::shared_ptr<void> p(ptr);
    assert(A::count == 1);
    assert(p.use_count() == 1);
    assert(p.get() == ptr);
    std::shared_ptr<void> p2(nullptr);
    }
    assert(A::count == 0);
}
