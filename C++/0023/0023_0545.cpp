#include <cassert>

struct S 
{ 
    const int x; 
    double y;
};

int main()
{
    S s = {4,2.1};
    if(auto [x,y] = s;y < 0)
     {
       return x;
     }
     else
     {
       assert(y == 2.1);
     }
}