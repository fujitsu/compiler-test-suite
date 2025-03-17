





#include <functional>
#include <cassert>

int g(int) {return 0;}

int main()
{
    {
    std::function<int(int)> f;
    assert(!f);
    f = g;
    assert(f);
    }
}
