





#include <memory>
#include <cassert>

int main()
{
    const std::shared_ptr<int> p1(new int);
    const std::shared_ptr<int> p2 = p1;
    const std::shared_ptr<int> p3(new int);
    assert(!p1.owner_before(p2));
    assert(!p2.owner_before(p1));
    assert(p1.owner_before(p3) || p3.owner_before(p1));
    assert(p3.owner_before(p1) == p3.owner_before(p2));
}
