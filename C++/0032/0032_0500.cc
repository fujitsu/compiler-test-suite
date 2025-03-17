





#include <stdio.h>

struct X {
    public:
        int x,y;
        X() { }
        void f(int i) { x = y = i; }
};

struct A {
    private:
        int a;
    public:
        int b;
        X xobj;
        A() { }
        void f(int i, int j) { a = i; b = j; }
        friend void g(A *, int);
};

void g(A *pa)
{
    pa->xobj.y = pa->b * pa->b;
}

void g(A *pa, int i)
{
    int x = pa->a;

    if( i>0 )
    {
        for( int j=1 ; j<i ; j++ )
            x *= pa->a;
        pa->xobj.x = x;
        g(pa);
    }
}
int main()
{
    A aobj1, aobj2;

    aobj1.f(2,3);       aobj1.xobj.f(0);
    aobj2.f(10,1);  aobj2.xobj.f(0);

    g(&aobj1);
    g(&aobj2);

    if( aobj1.xobj.x == 0 && aobj1.xobj.y == 9 &&
        aobj2.xobj.x == 0 && aobj2.xobj.y == 1 )
    {
        aobj1.xobj.f(0);
        aobj2.xobj.f(0);
        g(&aobj1,8);
        g(&aobj2,5);

        if( aobj1.xobj.x == 256 && aobj1.xobj.y == 9 &&
            aobj2.xobj.x == 100000 && aobj2.xobj.y == 1 )
            printf("ok\n");
        else
            printf("ng\n");
    }
    else
        printf("ng\n");
}
