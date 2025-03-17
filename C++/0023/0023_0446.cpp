#include <cassert>
#include <type_traits>

enum byte:int {};

int main()
{
    byte * b = new byte{1};
    assert(static_cast<std::underlying_type<byte>::type>(*b) == 1);

    const byte * b1 = new byte{1};
    assert(static_cast<std::underlying_type<byte>::type>(*b1) == 1);

    volatile byte * b2 = new byte{1};
    assert(static_cast<std::underlying_type<byte>::type>(*b2) == 1);

}
