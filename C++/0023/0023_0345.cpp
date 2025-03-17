#include<cassert>

void f(int a, int b)
{
    assert(a==-2);
    assert(b==-3);

}

int main () 
{
    int i = 0;
    f(i=-2, i=-3);
}
