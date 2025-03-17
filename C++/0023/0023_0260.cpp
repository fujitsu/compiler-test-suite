#include <cassert>

int  main()
{
    enum [[unstd]] E
    {
        a [[unstd]],
        b [[unstd]] = 3,
    };
    
    assert(a == 0);
    assert(b == 3);

}
