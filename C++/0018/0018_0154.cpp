















#include <functional>
#include <cassert>

int g(int) {return 0;}

int main()
{
    {
    std::function<int(int)> f;
    assert(f == nullptr);
    static_assert(noexcept(f == nullptr),"");
    assert(nullptr == f);
    static_assert(noexcept( nullptr == f),"");
    f = g;
    assert(f != nullptr);
    static_assert(noexcept(f != nullptr),"");
    assert(nullptr != f);
    static_assert(noexcept(nullptr != f),"");
    }
}
