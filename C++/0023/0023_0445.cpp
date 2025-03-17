#include <cassert>
#include <type_traits>

enum byte : unsigned char {};

struct A
{
    byte b;
    const byte c;
    volatile byte d;
    A():b(byte{42}),c(byte{43}),d(byte{45})
    {
        int a = 1;
    }
};

int main()
{
    A  a1 = A();
    assert(static_cast<std::underlying_type<byte>::type>(a1.b) == 42);
    assert(static_cast<std::underlying_type<byte>::type>(a1.c) == 43);
    assert(static_cast<std::underlying_type<byte>::type>(a1.d) == 45);
}
