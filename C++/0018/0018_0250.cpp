



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
    std::default_delete<A> d;
    static_assert(noexcept(std::default_delete<A>()),"");
    A* p = new A;
    assert(A::count == 1);
    d(p);
    assert(A::count == 0);
}
