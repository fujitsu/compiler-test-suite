



#include <thread>
#include <cassert>

int main()
{
    std::this_thread::yield();
    static_assert(noexcept(std::this_thread::yield()),"");
}
