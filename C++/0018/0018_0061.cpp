






#include <chrono>
#include <cassert>

int main()
{
    std::chrono::seconds s(3);
    s -= std::chrono::seconds(2);
    assert(s.count() == 1);
    s -= std::chrono::minutes(2);
    assert(s.count() == -119);
}
