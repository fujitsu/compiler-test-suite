#include <cassert>

int a[2] = {1,2};
auto f()->int(&)[2]{return a;};

int main()
{
    int m = 0;
    for(auto[x,y] = f();y > 0;y--)
    {
      m++;
      assert(x == 1);
    }
    assert(m == 2);
}