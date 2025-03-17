#include <cassert>

struct S 
{ 
    int x; 
    double y;
    int* p = &x;
};

int main()
{
    S s {2,2.1};
    switch(auto [x,y,p] = s;x)
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
     case 3:
      {
        assert(*p == 2);
      }
    }
}