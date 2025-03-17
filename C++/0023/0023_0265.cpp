#include <cassert>

int main()
{
    enum  E
    {
        a[[nonstd]][[nonstd]],
        b[[nonstd]][[nonstd]] = 3,
    };

    assert(a == 0);
    assert(b == 3);
}
