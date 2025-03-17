#include <cassert>

int main()
{
    int arr[3] {1, 2, 3};
    auto [i, c, d] = arr;
    assert(i == arr[0]);
    assert(c == arr[1]);
    assert(d == arr[2]);
    return 0;
}

