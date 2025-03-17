#include <cassert>

int main()
{
    enum [[deprecated]] E
    {
        a [[deprecated]],
        b [[deprecated]] = 5,
        c [[deprecated]],
    };
    
    assert(a == 0);
    assert(b == 5);
    assert(c == 6);

}
