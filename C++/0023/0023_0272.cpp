#include <cassert>

namespace [[deprecated]] A
{
    int a = 1;
}
namespace [[deprecated]]
{
    int b = 3;
}

int main()
{
    assert(A::a == 1);
    assert(b == 3);
}
