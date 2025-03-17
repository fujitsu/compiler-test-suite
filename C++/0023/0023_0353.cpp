#include<cassert>

void f(int a, int b)
{
    assert(a==1);
    assert(b==1);
}

int main () 
{
    int i = 0;
    f(++i, i++);   
}
