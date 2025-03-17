


#include <random>
#include <cassert>

int main()
{
    std::ranlux24 e;
    e.discard(9999);
    assert(e() == 9901578u);
}
