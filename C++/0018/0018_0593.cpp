


#include <random>
#include <cassert>

int main()
{
    std::ranlux24_base e;
    e.discard(9999);
    assert(e() == 7937952u);
}
