#include <cassert>

int main()
{
    enum [[maybe_unused]] E
    {
        a [[maybe_unused]],
        b [[maybe_unused]],
        c [[maybe_unused]] = 5,
    };

    assert(a == 0);
    assert(b == 1);
    assert(c == 5);

}
