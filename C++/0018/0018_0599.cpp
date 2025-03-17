


#include <random>
#include <cassert>

int main()
{
    std::seed_seq s;
    assert(s.size() == 0);
}
