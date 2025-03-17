#include <cassert>

int main()
{
    enum [[nodiscard]][[nodiscard]][[deprecated]] E
    {
        a,
        b,
        c = 3,
    };
    assert(a == 0);
    assert(b == 1);
    assert(c == 3);
}
