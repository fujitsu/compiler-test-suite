









#include <memory>
#include <cassert>

int main()
{
    std::pair<int*, std::ptrdiff_t> ip = std::get_temporary_buffer<int>(5);
    static_assert(noexcept(std::get_temporary_buffer<int>(5)),"");
    assert(ip.first);
    assert(ip.second == 5);
    std::return_temporary_buffer(ip.first);
}
