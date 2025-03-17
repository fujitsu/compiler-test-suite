#include <cassert>

namespace [[maybe_unused]] A
{
    int a = 1;
}
namespace [[maybe_unused]]
{
    int b = 3;
}

int main()
{
    assert(A::a == 1);
    assert(b == 3);
}
