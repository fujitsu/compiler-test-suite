#include <cassert>

enum E { e [[maybe_unused]] };
int main()
{
     assert((int)e == 0);
}