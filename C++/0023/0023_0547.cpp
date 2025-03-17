#include <cassert>

int a[2] = {3,2};
auto f()->int(&)[2]{return a;};

int main()
{
   int m = 0;
   if(auto& [x,y] = f();x > 0)
    {
      assert(y == 2);
      assert(x == 3);
    }
   else
    {
       return 0;
    }
}