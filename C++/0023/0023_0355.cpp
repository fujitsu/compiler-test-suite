#include<cassert>

void f(int a, int b)
{
    assert(a==1);
    assert(b==5);
}

int main () 
{
    int i = 0;
    f(i++ +1, i=5);   
}
