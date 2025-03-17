





#include <stdio.h>

class X {
    public:
        int x1, x2;
        X(int i, int j) { x1 = i; x2 = j; }
        X& operator=(const X&);
};

X& X::operator=(const X &rx)
{
    x1 = rx.x1;
    x2 = rx.x2;
    return *this;
}

class Y : public X {
    public:
        int y1, y2;
        Y(int i, int j) : X(i+1,j+1) { y1 = i; y2 = j; }
};

struct A {
    public:
        int a1, a2;
        A(int i, int j) { a1 = i; a2 = j; }
        A& operator=(const A&);
};

A& A::operator=(const A &ra)
{
    a1 = ra.a1;
    a2 = ra.a2;
    return *this;
}

struct B : public A {
    public:
        int b1, b2;
        B(int i, int j) : A(i+1,j+1) { b1 = i; b2 = j; }
};
int main()
{
    X xobj(1,2);
    Y yobj = Y(3,4);
    A aobj = A(2,4);
    B bobj = B(0,0);

    if( xobj.x1 == 1 && xobj.x2 == 2 )
        xobj = yobj;

    if( aobj.a1 == 2 && aobj.a2 == 4 )
        aobj = bobj;

    if( xobj.x1 == 4 && xobj.x2 == 5 && yobj.y1 == 3 && yobj.y2 == 4 && 
        aobj.a1 == 1 && aobj.a2 == 1 && bobj.b1 == 0 && bobj.b2 == 0 )
        printf("ok\n");
    else
        printf("ng\n");
}
