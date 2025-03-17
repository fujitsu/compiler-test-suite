#include<cassert>

struct B
{
    void f(int a, int b)
    {
        assert(a==5);
        assert(b==6);
    }
};

int main () 
{
    B b;
    int i = 0;
    b.f(i=5, (i++ +1));   
}
