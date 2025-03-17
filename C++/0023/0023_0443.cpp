#include <cassert>
#include <type_traits>

int main()
{
    enum class byte : long {};
    struct A {byte b;};
    A  a1{byte{42}};
    assert(static_cast<std::underlying_type<byte>::type>(a1.b) == 42);
}
