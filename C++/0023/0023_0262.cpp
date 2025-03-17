#include <cassert>

int main()
{
    enum [[deprecated]] E
    {
        a [[deprecated]] = 5,
        b [[deprecated]],
        c [[deprecated]],
    };

    assert(a == 5);
    assert(b == 6);
    assert(c == 7);
}
