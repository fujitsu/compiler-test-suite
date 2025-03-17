#include<cassert>

void f(int a, int b)
{
    assert(a==-3);
    assert(b==-3);
}

int main () 
{
    int i = 0;
    f(i=-3, i);
}
