





#include <functional>
#include <cassert>

int main()
{
    std::function<int(int)> f;
    static_assert(noexcept(std::function<int(int)>()),"");
    assert(!f);
}
