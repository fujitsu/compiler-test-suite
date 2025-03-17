#include <cassert>

struct S 
{ 
    int x; 
    const double y;
    S(int x1,const double y1):x(x1),y(y1){}
    int fun()
    {
        return 1;
    }
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
