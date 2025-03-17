#include <cassert>

enum [[maybe_unused]] E { e};
enum [[maybe_unused]] F { f};
int main()
{
    assert((int)e == 0);
    assert((int)f == 0);

}