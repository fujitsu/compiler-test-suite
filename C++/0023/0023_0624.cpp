#include <iostream>
#include <iomanip>
#include <utility>
#include <cassert>

template <typename... Ts>
struct Overloader : Ts... {
    using Ts::operator()...;
};

template <typename... Ts>
constexpr auto make_overloader(Ts&&... ts)
{
    return Overloader<Ts...>{std::forward<Ts>(ts)...};
}

int main()
{
    auto o = make_overloader([] (auto a) {return a;},[] (float f) {return f;});
    assert(o("hello") == "hello");
    assert(o(1.2f) == 1.2f);
}

