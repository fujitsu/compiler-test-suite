
#include <stdio.h>

class A {
    private:
        int a1, a2;
    public:
        A(int i, int j) : a1(i), a2(j) { }
        void f1(int);
        friend int f2(A *, int);
};

void A::f1(int i)
{
    a1 += i;
    a2 -= i;
}

int f2(A *aobj, int i)
{
    int x;

    x = aobj->a1 > aobj->a2 ? aobj->a1 : aobj->a2;
    return x > i ? x : i;
}
int main()
{
    A aobj1 = A(2,8);
    A aobj2(-5,10), aobj3(3,3);

    aobj1.f1(1);
    aobj2.f1(10);
    aobj3.f1(0);

    if( f2( &aobj1, 5 ) == 7 &&
        f2( &aobj2, -5 ) == 5 &&
        f2( &aobj3, 3 ) == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
