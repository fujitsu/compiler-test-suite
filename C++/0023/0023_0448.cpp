#include <cassert>
#include <type_traits>

enum byte:char {};

int main()
{
    const byte & b = byte{'a'};
    assert(static_cast<std::underlying_type<byte>::type>(b) == 'a');
}
