#include <cassert>

enum E { e [[maybe_unused]], f [[maybe_unused]]};
int main()
{
    assert((int)e == 0);
    assert((int)f == 1);
}