#include <cassert>
#include <type_traits>

enum byte : unsigned char {};

void f(byte b)
{
    assert(static_cast<std::underlying_type<byte>::type>(b) == 42);
}

enum byte1 : unsigned char {a ='a'};
void f1(byte1 b)
{
    assert(static_cast<std::underlying_type<byte1>::type>(b) == 42);
}

enum byte2 : unsigned char {};
void f2(const byte1 b)
{
    assert(static_cast<std::underlying_type<byte2>::type>(b) == 42);
}

enum byte3 : unsigned char {b ='a'};
void f3(volatile byte1 b)
{
    assert(static_cast<std::underlying_type<byte3>::type>(b) == 42);
}

int main()
{
    f(byte{42});
    f1(byte1{42});
    f2(byte1{42});
    f3(byte1{42});
}
