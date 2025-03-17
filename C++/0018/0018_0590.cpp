







#include <random>
#include <cassert>

int main()
{
    std::mt19937 e;
    e.discard(9999);
    assert(e() == 4123659995u);
}
