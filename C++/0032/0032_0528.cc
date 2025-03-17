




#include <stdio.h>

class A {
    private:
        int a1;
    protected:
        int a2;
    public:
        A() { }
        A(int i, int j) : a1(i), a2(j) { }
        void f1(int);
        friend int f2(A *, int);
};

void A::f1(int i)
{
    a1 += i;
    a2 -= i;
}

class B : public A {
    private:
        int b1;
    protected:
        int b2;
    public:
        B(int i, int j, int k): b1(i), b2(j), A(k,k) { }
        void g1(int);
        friend int g2(B *, int);
};

void B::g1(int i)
{
    b1 += i;
    b2 -= i;
    a2 *= i;
}

int f2(A *aobj, int i)
{
    int x;

    x = aobj->a1 > aobj->a2 ? aobj->a1 : aobj->a2;
    return x > i ? x : i;
}

int g2(B *bobj, int i)
{
    int x,y;

    x = bobj->b1 > bobj->a2 ? bobj->b1 : bobj->b2;
    y = x > bobj->a2 ? x : bobj->a2;
    return y > i ? y : i;
}
int main()
{
    A aobj(8,7);
    B bobj(5,7,3);

    aobj.f1(1);
    bobj.g1(2);

    if( g2(&bobj, f2(&aobj,7)) == 9 )
        printf("ok\n");
    else
        printf("ng\n");
}
