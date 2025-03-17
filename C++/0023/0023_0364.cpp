#include<cassert>

struct B
{
    void f(int a, int b)
    {
        assert(a==1);
        assert(b==5);
    }
};

int main () 
{
    B b;
    int i = 0;
    b.f((i++ + 1), i=5);   
}
