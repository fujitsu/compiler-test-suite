#include <cassert>

int main()
{
   int arr[2]{1,3};
   switch(auto [x,y] = arr;y)
    {
      case 1:
       {
         assert( x == 1);
       }
      case 2:
       {
         return 0;
       }
       case 3:
       {
         y--;
         assert(y == 2);
       }
    }
}