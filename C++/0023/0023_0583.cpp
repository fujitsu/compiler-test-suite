#include <cassert>

static_assert(2 != 1,"error here");

static_assert(true);

int i = 1;

int main()
{
    assert(i == 1);
}
