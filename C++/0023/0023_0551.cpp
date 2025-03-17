#include <cassert>

struct S 
{ 
    int x; 
    const double y;
};

int main()
{
    S s = {2,2.1};
    switch(auto [x,y] = s;x)
    {
     case 1:
      {
        assert(y == 2.1);
      }
     case 2:
      { 
        x--;
        assert(x == 1);
       }
     case 3:break;
    }
}