
#include <stdio.h>

struct A {
    private:
        int a1;
    protected:
        int a2;
    public:
        int a3;
        A() { }
        A(int i, int j, int k) : a1(i), a2(j), a3(k) { }
};

struct B : public A {
    private:
        int b1;
    protected:
        int b2;
    public:
        int b3;
        B() { }
        B(int i, int j) : b1(i), b2(i), b3(i), A(j,j,j) { }
        int g1(void);
        friend int g2(B *, int);
};

int B::g1(void)
{
    return b1 + b2 + b3 + a2 + a3;
}

int g2(B *bobj, int i)
{
    int x,y;

    x = bobj->b1 > bobj->a2 ? bobj->b1 : bobj->b2;
    y = x > bobj->b3 ? x : bobj->b3;
    x = bobj->a2 > bobj->a3 ? bobj->a2 : bobj->a3;
    return x + y + i;
}
int main()
{
    B bobj = B(5,10);

    bobj.a3 -= 3;
    bobj.b3 += 3;

    if( bobj.g1() == 35 && g2(&bobj, 3) == 21 )
        printf("ok\n");
    else
        printf("ng\n");
}
