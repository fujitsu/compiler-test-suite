#include <cassert>

const int f(int a){return a;}
int f(int a ,int b) noexcept 
{
    return b;
}

int main()
{
    assert(f(1)==1);
    assert(f(1,2)==2);
}
