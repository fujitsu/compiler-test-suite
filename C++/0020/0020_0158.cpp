#include <valarray>
#include <cassert>
#include <stdio.h>

int main()
{
    std::valarray<int> v{1, 3, 2, 4, 8};
    auto p = std::begin(v);
    assert(*p == 1);

    *begin(v) = 88;
    assert(*p == 88);

    v.resize(10, 7);
}
