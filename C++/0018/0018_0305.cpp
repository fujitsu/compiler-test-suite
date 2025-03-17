





#include <mutex>

int main()
{
    static_assert(noexcept(std::mutex()),"");
}
