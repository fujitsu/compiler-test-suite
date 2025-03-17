#include <cassert>

struct S 
{ 
    const int x; 
    double y;
    S(const int x1,double y1):x(x1),y(y1){}
    int fun()
    {
        return 1;
    }
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
