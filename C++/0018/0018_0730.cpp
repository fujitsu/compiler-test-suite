



#include <thread>
#include <cassert>

int main()
{
    std::thread::id id = std::this_thread::get_id();
    assert(id != std::thread::id());
}
