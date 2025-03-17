#include <cassert>

namespace [[nodiscard]] A
{
    int a = 1;
}

int main()
{
    assert(A::a == 1);
}
