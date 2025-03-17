#include <cassert>

int main()
{
    int arr[3] {1, 2, 3};
    int m = 0;
    for(auto [i, c, d] = arr;c>0;c--)
    {
      m++;
    }
    assert(m == 2);
}