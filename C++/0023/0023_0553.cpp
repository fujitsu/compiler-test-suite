#include <cassert>

int a[2]{3,2};
auto f()->int(&)[2]{return a;};

int main()
{
   switch(auto& [x,y] = f();x)
      {
        case 1:
          {
            assert( y == 2);
          }
        case 2:
           {
             return 0;
           }
         case 3:
          {
           x--;
           assert(x == 2);
          }
      }
}