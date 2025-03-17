#include<cassert>

void f(int a, int b)
{
    assert(a==1);
    assert(b==2);
}

int main () 
{
    int i = 0;
    f(++i, ++i);   
}
