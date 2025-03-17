





#include <thread>
#include <cassert>

int main()
{
    assert(std::thread::hardware_concurrency() > 0);
}
