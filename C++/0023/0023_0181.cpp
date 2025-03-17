#include <cassert>

enum [[maybe_unused]] E { e};
int main()
{
    assert((int)e == 0);
}
