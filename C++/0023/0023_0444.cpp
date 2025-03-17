#include <cassert>
#include <type_traits>

int main()
{

    enum byte : unsigned char {};
    class A 
    {
        public:
            const byte b;
    };
    class B
    {
        public:
            volatile byte b;
    };
    A  a1 = {byte{42}};
    B b1 = {byte{43}};
    assert(static_cast<std::underlying_type<byte>::type>(a1.b) == 42);
    assert(static_cast<std::underlying_type<byte>::type>(b1.b) == 43);

}
