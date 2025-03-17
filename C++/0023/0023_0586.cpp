#include <cassert>

int main()
{
    int i = 1;
    static_assert(true,"error here");
    assert(i == 1);
}
