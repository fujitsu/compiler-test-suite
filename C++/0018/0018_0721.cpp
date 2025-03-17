





#include <thread>
#include <cassert>

int main()
{
    std::thread::id id0;
    std::thread::id id1 = id0;
    assert(id1 == id0);
}
