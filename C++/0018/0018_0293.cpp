





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
        std::shared_ptr<A> p1(new A);
        std::weak_ptr<A> w1(p1);
        assert(w1.use_count() == 1);
        w1.reset();
        static_assert(noexcept(w1.reset()),"");
        assert(w1.use_count() == 0);
        assert(p1.use_count() == 1);
    }
    assert(A::count == 0);
}
