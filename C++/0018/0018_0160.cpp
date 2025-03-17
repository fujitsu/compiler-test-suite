





#include <functional>
#include <cassert>

int main()
{
    std::function<int(int)> f(nullptr);
    static_assert(noexcept(std::function<int(int)>(nullptr)),"");
    assert(!f);
}
