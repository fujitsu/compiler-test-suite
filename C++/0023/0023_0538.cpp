#include <iostream>
#include <cassert>

struct S 
{ 
    int x; 
    volatile double y;
};

int main()
{
    S s{2,2.1};
    int i = 0;
    for(auto [x,y] = s;x > 0;x--)
    {
     i++;
    }
    assert(i == 2);
}