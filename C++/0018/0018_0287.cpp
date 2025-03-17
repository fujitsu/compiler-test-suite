





#include <memory>
#include <cassert>

int main()
{
    {
    const std::shared_ptr<int> p(new int(32));
    assert(p);
    }
    {
    const std::shared_ptr<int> p;
    assert(!p);
    }
}
