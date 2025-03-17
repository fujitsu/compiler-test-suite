







#include <thread>
#include <sstream>
#include <cassert>

int main()
{
    std::thread::id id0 = std::this_thread::get_id();
    std::ostringstream os;
    os << id0;
}
