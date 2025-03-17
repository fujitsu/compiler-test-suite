#include <cassert>

namespace [[maybe_unused]][[maybe_unused]] A
{
    inline namespace [[maybe_unused,deprecated]][[maybe_unused,deprecated]]B
    {
        int a = 1;
    }
}

int main()
{
    assert(A::B::a == 1);
}
