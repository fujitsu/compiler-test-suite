












#include <memory>
#include <cassert>

struct T
: public std::enable_shared_from_this<T>
{
};

struct Y : T {};

struct Z : Y {};

int main()
{
    {
        static_assert(noexcept(std::shared_ptr<T const>()),"");
    }
    {
        std::shared_ptr<T const> t1(new T);
        std::shared_ptr<T const> t2(std::make_shared<T>());
    }
    {
        std::shared_ptr<Y> p(new Z);
        std::shared_ptr<T> q = p->shared_from_this();
        assert(p == q);
        static_assert(noexcept((p == q)),"");
        assert(!p.owner_before(q) && !q.owner_before(p)); 
    }
    {
        std::shared_ptr<Y> p = std::make_shared<Z>();
        std::shared_ptr<T> q = p->shared_from_this();
        assert(p == q);
        assert(!p.owner_before(q) && !q.owner_before(p)); 
    }
}
