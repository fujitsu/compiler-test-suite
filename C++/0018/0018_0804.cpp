
#include <utility>
#include <memory>
#include <cassert>

struct Base
{
    virtual ~Base() {}
};

struct Derived
    : public Base
{
};

void test()
{
    typedef std::pair<std::unique_ptr<Derived>, short> P1;
    typedef std::pair<std::unique_ptr<Base>, long> P2;
    P1 p1(std::unique_ptr<Derived>(), 4);
    P2 p2 = std::move(p1);
    assert(p2.first == nullptr);
    assert(p2.second == 4);
}

int main()
{
    test();
}
