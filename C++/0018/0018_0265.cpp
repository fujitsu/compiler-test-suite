



#include <memory>
#include <cassert>

int main()
{
    std::shared_ptr<int> p;
    static_assert(noexcept(std::shared_ptr<int>()),"");
    assert(p.use_count() == 0);
    assert(p.get() == 0);
}
