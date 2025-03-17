





#include <stdio.h>

struct X {
    public:
        int x,y;
};

struct B;

struct A : private X {
    public:
        int a1, a2, a3, a4;
        void set(int i, int j) { x = i; y = j; }
        int add(X *px) { return px->x + px->y; }
        int sub(X *px) { return px->x - px->y; }
        int mul(X *px) { return px->x * px->y; }
        int div(X *px) { return px->x / px->y; }
        friend int chk(A *, B *);
};

struct B : public X {
    public:
        int b1, b2, b3, b4;
        void set(int i, int j) { x = i; y = j; }
        friend struct A;
        friend int chk(A *, B *);
};

int chk(A *pa, B *pb)
{
    return pa->a1 == pb->b1 && pa->a2 == pb->b2 &&
           pa->a3 == pb->b3 && pa->a4 == pb->b4;
}
int main()
{
    A aobj;    aobj.set(8,4);
    B bobj;    bobj.set(8,4);

    aobj.a1 = aobj.add((X *)&aobj);
    aobj.a2 = aobj.sub((X *)&aobj);
    aobj.a3 = aobj.mul((X *)&aobj);
    aobj.a4 = aobj.div((X *)&aobj);

    bobj.b1 = aobj.add((X *)&bobj);
    bobj.b2 = aobj.sub((X *)&bobj);
    bobj.b3 = aobj.mul((X *)&bobj);
    bobj.b4 = aobj.div((X *)&bobj);

    A rslt;
    rslt.a1 = 12; rslt.a2 = 4; rslt.a3 = 32; rslt.a4 = 2;

    if( chk(&aobj, &bobj) && chk(&rslt, &bobj) )
        printf("ok\n");
    else
        printf("ng\n");
}    
