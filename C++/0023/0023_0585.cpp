#include <cassert>

int main()
{
    int i = 1;
    static_assert(2 == 2);
    assert(i == 1);
}
