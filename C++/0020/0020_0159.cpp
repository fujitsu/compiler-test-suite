#include <valarray>
#include <cassert>

int main()
{
    std::valarray<int> v{1, 3, 2, 4, 8};
    auto p = std::end(v);
    assert(*(p - 1) == 8);
    v.resize(10, 7);
}
