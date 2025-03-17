#include <cassert>
#include <type_traits>

enum byte : int{};

int main()
{
    const byte & b{0};
    assert(static_cast<std::underlying_type<byte>::type>(b) == 0);
}
