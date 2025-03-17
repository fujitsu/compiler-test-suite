#include <cassert>

int main()
{
    enum [[deprecated]][[deprecated]] E
    {
        a [[deprecated,maybe_unused]] = 1,
        b [[deprecated,maybe_unused]],
        c [[deprecated,maybe_unused]],
    };

    assert(a == 1);
    assert(b == 2);
    assert(c == 3);
}
