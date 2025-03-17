#include <cassert>
#include <type_traits>

int main()
{
    
    enum byte : unsigned char {};
    byte b = byte{42};
    assert(static_cast<std::underlying_type<byte>::type>(b) == 42);
}
