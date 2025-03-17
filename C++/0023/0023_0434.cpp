#include <cassert>
#include <type_traits>
#include <stdint.h>

int main()
{
    enum A :unsigned long {b};
    const A a {b};
    assert(static_cast<std::underlying_type<A>::type>(a) == 0); 
}
