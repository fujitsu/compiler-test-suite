#include <cassert>

namespace A
{
    static_assert(true,"error here");

    static_assert(2 != 1);

    int i = 1;
}

int main()
{
    assert(A::i == 1);
}
