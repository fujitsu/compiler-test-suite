





#include <stdio.h>

class A { public: int a; };
class B : public A { public: int b; };
class C : public A { public: int c; };
int main()
{
    A aobj, *pa = &aobj;
    B bobj, *pb = &bobj;
    C cobj, *pc = &cobj;
    int func(int, A*, B*, C*);

    aobj.a = 1;
    bobj.a = 10; bobj.b = 20;
    cobj.a = 100; cobj.c = 200;

    if( func(1, pa, pb, pc) == 101 &&
        func(0, pa, pb, pc) == 11 )
        printf("ok\n");
    else
        printf("ng\n");
}

int func(int i, A *pa, B *pb, C *pc)
{
    int x,y;

    x = (i ? pa : pb)->a;
    y = (!i ? pa : pc)->a;

    return x + y;
}
