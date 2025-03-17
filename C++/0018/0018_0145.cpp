



#include <functional>
#include <type_traits>
#include <cassert>

int main()
{
    typedef std::bit_and<int> F;
    const F f = F();
    static_assert((std::is_same<int, F::first_argument_type>::value), "" );
    static_assert((std::is_same<int, F::second_argument_type>::value), "" );
    static_assert((std::is_same<int, F::result_type>::value), "" );
    assert(f(0xEA95, 0xEA95) == 0xEA95);
    assert(f(0xEA95, 0x58D3) == 0x4891);
    assert(f(0x58D3, 0xEA95) == 0x4891);
    assert(f(0x58D3, 0) == 0);
    assert(f(0xFFFF, 0x58D3) == 0x58D3);
}
