#include <cassert>

int main()
{
    enum [[maybe_unused]][[nonstd,deprecated]] E
    {
        a[[maybe_unused,nonstd]][[maybe_unused]][[deprecated]],
        b[[maybe_unused,nonstd]][[maybe_unused]][[deprecated]] = 2,
    };

    assert(a == 0);
    assert(b == 2);
}
