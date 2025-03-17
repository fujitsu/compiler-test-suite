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
    {
        S s = {4,2.1};
        int i = 0;
        for(auto& [x,y] = s;s.y > 0;s.y--)
        {
            i++;
        }
        assert(i == 3);
    }
    {
        S s {4,2.1};
        int i = 0;
        for(auto& [x,y] = s;s.y > 0;s.y--)
        {
            i++;
        }
        assert(i == 3);
    }
}
