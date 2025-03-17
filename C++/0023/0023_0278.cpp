#include <cassert>

namespace [[unstd,unstd,unstd]]A 
{
    namespace [[unstd,unstd,unstd]] B
    {
        int a = 1;
    }
}

int main()
{
    assert(A::B::a == 1);
}
