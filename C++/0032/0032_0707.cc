





#include <stdio.h>

struct X {
    private:
        int a;
    public:
        X(int);
        int cmp(int);
};

X::X(int a) : a(a) { }

int X::cmp(int i)
{
    return a==i;
}
int main()  
{
    X x1 = 10;
    X x2 = X(20);
    X x3(30);

    if( x1.cmp(10) && x2.cmp(20) && x3.cmp(30) )
        printf("ok\n");
    else
        printf("ng\n");
}
