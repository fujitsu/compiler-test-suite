#include <cassert>

namespace [[nodiscard]]
{
    int a = 1;
}

int main()
{
    assert(a == 1);
}
