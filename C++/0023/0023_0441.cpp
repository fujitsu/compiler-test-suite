#include <cassert>
#include <type_traits>

enum byte : int {};

byte f()
{
    return byte{1};
}

int main()
{
    assert(static_cast<std::underlying_type<byte>::type>(f()) == 1);
}
