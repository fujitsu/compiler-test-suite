





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
        std::weak_ptr<A> wp;
        assert(wp.use_count() == 0);
        static_assert(noexcept(wp.expired()),"");
        assert(wp.expired() == (wp.use_count() == 0));
    }
    {
        std::shared_ptr<A> sp0(new A);
        std::weak_ptr<A> wp(sp0);
        assert(wp.use_count() == 1);
        assert(wp.expired() == (wp.use_count() == 0));
        sp0.reset();
        assert(wp.use_count() == 0);
        assert(wp.expired() == (wp.use_count() == 0));
    }
}
