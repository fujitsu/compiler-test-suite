#include <cassert>

struct S 
{ 
    const int x; 
    double y;
};

int main()
{
    S s = {4,2.1};
    int i = 0;
    for(auto& [x,y] = s;s.y > 0;s.y--)
    {
     i++;
    }
    assert(i == 3);
}