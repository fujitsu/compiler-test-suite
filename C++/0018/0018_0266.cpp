



#include <memory>
#include <cassert>

int main()
{
    std::shared_ptr<int> p(nullptr);
    assert(p.use_count() == 0);
    assert(p.get() == 0);
}
