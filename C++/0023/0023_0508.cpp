#include <cassert>

int main()
{
    auto monoid = [](auto v){return[=]{return v;};};
    auto add = [=](auto m1)constexpr
    {
        auto ret=m1();
        return[=](auto m2)mutable
        {
            auto m1val=m1();
            auto plus=[=](auto m2val) constexpr  mutable
            {
                return m1val+=m2val;
            };
            ret=plus(m2());
            return monoid(ret);
        };
    };
    constexpr auto zero = monoid(0);
    constexpr auto one = monoid(1);
    
    static_assert(add(one)(zero)() == one());
    auto two = monoid(2);
    
    assert(two() == 2);
    static_assert(add(one)(one)() == monoid(2)());
}

