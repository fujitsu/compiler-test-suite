





#include <stdio.h>

struct A {
    public:
        int a,b;
        void seta(int i, int j) { a = i; b = j; }
};

struct B {
    public:
        int x;
        A aobj;
        friend void seta(int,int);
        void setb(int,int,int);
};

void B::setb(int i, int j, int k)
{
    x = i;
    aobj.seta(j,k);
}
int main()
{
    B obj1, obj2;

    obj1.x = 1;
    obj1.aobj.seta(2,3);

    obj2.setb(11,12,13);

    if( obj1.x == 1 && obj1.aobj.a == 2 && obj1.aobj.b == 3 &&
        obj2.x == 11 && obj2.aobj.a == 12 && obj2.aobj.b == 13 )
        printf("ok\n");
    else
        printf("ng\n");
}    
