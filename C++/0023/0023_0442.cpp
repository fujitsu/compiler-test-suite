#include <cassert>
#include <type_traits>

enum byte : int {};

const byte f()
{
    return byte{1};
}

volatile byte f1()
{
    return byte{1};
}

int main()
{
    assert(static_cast<std::underlying_type<byte>::type>(f()) == 1);
    assert(static_cast<std::underlying_type<byte>::type>(f1()) == 1);
}
