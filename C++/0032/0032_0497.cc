





#include <stdio.h>

#define ADD 1
#define SUB 2
#define AVERAGE 3

class B;

class A {
    private:
        int a1;
    public:
        int a2;
        A(int i, int j) { a1 = i; a2 = j; }
        friend B &func(A &, B&, int);
};

class B {
    public:
        int b1;
        int b2;
        B() { }
        B(int i, int j) { b1 = i; b2 = j; }
        friend B &func(A&, B&, int);
        int cmp(B&);
};

B bobj;

B &func(A &ra, B &rb, int i)
{
    int x;

    switch( i )
    {   
        case ADD : bobj.b1 = ra.a1 + rb.b1;
                   bobj.b2 = ra.a2 + rb.b2;
                   break;
        case SUB : x = ra.a1 - rb.b1;
                   bobj.b1 = x < 0 ? -x : x;
                   x = ra.a2 - rb.b2;
                   bobj.b2 = x < 0 ? -x : x;
                   break;
        case AVERAGE: bobj.b1 = ( ra.a1 + rb.b1 ) / 2;
                     bobj.b2 = ( ra.a2 + rb.b2 ) / 2;
                     break;
        default: bobj.b1 = 0;
                 bobj.b2 = 0;
    }
    
    return bobj;
}

int B::cmp(B &rb)
{
    return b1 == rb.b1 && b2 == rb.b2;
}
int main()
{
    int i = 0;
    A aobj1(100,100);
    A aobj2 = A(50,50);
    B bobj1(0,0);
    B bobj2 = B(50,50);

    if( func(aobj1, bobj1, ADD).cmp(func(aobj2, bobj2, ADD)) )
        i++;

    if( func(aobj1, bobj2, SUB).cmp(func(aobj2, bobj1, SUB)) )
        i++;

    if( bobj2.cmp(func(aobj1, bobj1, AVERAGE)) )
        i++;

    if( bobj2.cmp(func(aobj2, bobj2, AVERAGE)) )
        i++;

    if( i == 4 )
        printf("ok\n");
    else
        printf("ng\n");
} 
