





#include <mutex>

int main()
{
    {
    std::once_flag f;
    static_assert(noexcept(std::once_flag()),"");
    }
    {
    constexpr std::once_flag f;
    }
}
