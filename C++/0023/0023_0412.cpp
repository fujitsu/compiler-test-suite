#include <cassert>

[[ using CC: debug,debug]] 
int f() 
{
    int m = 1;
    return m;
}

[[ CC::debug,debug]] 
int g() 
{
    int n = 5;
    return n;
}

int main()
{
    assert(f() == 1);
    assert(g() == 5);  
}