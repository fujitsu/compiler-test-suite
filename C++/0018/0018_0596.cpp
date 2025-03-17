




#include <random>
#include <cassert>

int main()
{
    std::random_device r;
    double e = r.entropy();
}
