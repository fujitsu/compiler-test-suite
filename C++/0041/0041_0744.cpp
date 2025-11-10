#include <cstddef> 
#include "public3/004.h"
#include "public3/005.h"

template<class... Types>
class A
{
public:
    static const std::size_t value = sizeof...(Types);
    static_assert((is_same<decltype(sizeof...(Types)), std::size_t>::value), "error");
};

template<class... Types>
const std::size_t A<Types...>::value;

template <class ... Types>
std::size_t f(Types ... args)
{
    assert_true((sizeof...(Types) == sizeof...(args)));
    return sizeof...(args);
}

void test()
{
    {
        assert_true((A<int>::value == 1));
        assert_true((A<int, char>::value == 2));
        assert_true((A<int, char, A<bool> >::value == 3));
        assert_true((A<int, char, A<bool, int>, long>::value == 4));
    }
    {
        assert(f() == 0);
        assert(f(0) == 1);
        assert(f(1, 3.0) == 2);
        assert(f(2, 'c', false) == 3);
    }
}

PASS_CASE_MAIN_FUNCTION
