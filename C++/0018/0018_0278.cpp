





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
        std::shared_ptr<A> pA(new A);
        assert(pA.use_count() == 1);
        assert(A::count == 1);
        {
            A* p = pA.get();
            std::shared_ptr<A> pA2(std::move(pA));
            static_assert(noexcept(std::shared_ptr<A>(std::move(pA))),"");
            assert(A::count == 1);
            assert(pA2.get() == p);
        }
    }
    assert(A::count == 0);
    {
        std::shared_ptr<A> pA;
        assert(pA.use_count() == 0);
        assert(A::count == 0);
        {
            std::shared_ptr<A> pA2(std::move(pA));
            assert(A::count == 0);
            assert(pA.use_count() == 0);
            assert(pA2.use_count() == 0);
            assert(pA2.get() == pA.get());
        }
        assert(pA.use_count() == 0);
        assert(A::count == 0);
    }
    assert(A::count == 0);
}
