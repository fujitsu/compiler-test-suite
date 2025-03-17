







#include <random>
#include <cassert>

int main()
{
    std::mt19937_64 e;
    e.discard(9999);
    assert(e() == 9981545732273789042ull);
}
