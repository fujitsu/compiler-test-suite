
#include <stdio.h>

class X {
    private:
        int x1;
    protected:
        int x2;
    public:
        int x3;
        void f(int);
        friend int gx(X *);
};

class A : public X {
    private:
        int a1;
    protected:
        int a2;
    public:
        int a3;
        void f(int);
        friend int ga(A *);
};

void X::f(int i)
{
    x1 = i;    x2 = i;
}

void A::f(int i)
{
    X::f(i);
    a1 = i + 1;    a2 = x2 + i;
}

int gx(X *px)
{
    return px->x1 + px->x2 + px->x3;
}

int ga(A *pa)
{
    return pa->a1 + pa->a2 + pa->a3;
}
int main()
{
    X xobj;
    A aobj;

    xobj.f(3);
    xobj.x3 = 3;

    aobj.f(2);
    aobj.x3 = 5;
    aobj.a3 = 8;

    if( gx(&xobj) == 9 && gx(&aobj) == 9 && ga(&aobj) == 15 )
        printf("ok\n");
    else
        printf("ng\n");
}
