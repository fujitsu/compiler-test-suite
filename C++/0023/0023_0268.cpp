#include <cassert>

inline namespace [[nodiscard]]
{
    int a = 1;
}

int main()
{
    assert(a == 1);
}
