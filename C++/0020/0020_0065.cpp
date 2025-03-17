#include <memory>
#include <type_traits>
#include <cassert>

class A
{
};
class B : public A
{
};

void test()
{
    std::shared_ptr<B> ps(new B);
    std::weak_ptr<B> pwb(ps);
    assert(pwb.use_count() == 1);

    std::weak_ptr<A> pwa(std::move(pwb));
    assert(pwb.use_count() == 0);
    assert(pwa.use_count() == 1);
}

int main()
{
    test();

    return 0;
}
