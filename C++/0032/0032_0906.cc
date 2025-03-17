





#include <stdio.h>

int x = 0;

class A {
    public:
        int a1, a2, a3;
        A(int);
};

A::A(int i)
{
    a1 = i + x++;
    a2 = i + x++;
    a3 = i + x++;
}

class B {
    public:
        int b1, b2, b3;
        B(int);
};

B::B(int i)
{
    b1 = i + x++;
    b2 = i + x++;
    b3 = i + x++;
}

class C : public virtual A, public virtual B {
    public:
        int c1, c2, c3;
        C(int);
};

C::C(int i) : B(i+1), A(i+2)
{
    c1 = i + x++;
    c2 = i + x++;
    c3 = i + x++;
}

class D : public virtual B, public virtual A {
    public:
        int d1, d2, d3;
        D(int);
};

D::D(int i) : A(i+3), B(i+4)
{
    d1 = i + x++;
    d2 = i + x++;
    d3 = i + x++;
}

class E : public C, public D {
    public:
        int e1, e2, e3;
        E(int);
};

E::E(int i) : C(i+1), D(i+2), A(i+3), B(i+2)
{
    e1 = i + x++;
    e2 = i + x++;
    e3 = i + x++;
}
int main()
{
    int i = 0;
    C cobj(1);    x = 0;
    D dobj(1);    x = 0;
    E eobj(1);

    if( cobj.a1 == 3 && cobj.a2 == 4 && cobj.a3 == 5 &&
        cobj.b1 == 5 && cobj.b2 == 6 && cobj.b3 == 7 &&
        cobj.c1 == 7 && cobj.c2 == 8 && cobj.c3 == 9 )
        i++;

    if( dobj.a1 == 7 && dobj.a2 == 8 && dobj.a3 == 9 &&
        dobj.b1 == 5 && dobj.b2 == 6 && dobj.b3 == 7 &&
        dobj.d1 == 7 && dobj.d2 == 8 && dobj.d3 == 9 )
        i++;
     
    if( eobj.a1 ==  4 && eobj.a2 ==  5 && eobj.a3 ==  6 &&
        eobj.b1 ==  6 && eobj.b2 ==  7 && eobj.b3 ==  8 &&
        eobj.c1 ==  8 && eobj.c2 ==  9 && eobj.c3 == 10 &&
        eobj.d1 == 12 && eobj.d2 == 13 && eobj.d3 == 14 &&
        eobj.e1 == 13 && eobj.e2 == 14 && eobj.e3 == 15 )
        i++;

    if( i == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
