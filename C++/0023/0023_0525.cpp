#include <cassert>

int main()
{
    auto ID = [=](){return 3;};
    static_assert(ID() == 3);
    assert(ID() == 3);

    auto ID1 = [=]()constexpr{return 1;};
    static_assert(ID1() == 1);
    assert(ID1() == 1);

    auto ID2 = [](){return 3;};
    static_assert(ID2() == 3);
    assert(ID2() == 3);
}
