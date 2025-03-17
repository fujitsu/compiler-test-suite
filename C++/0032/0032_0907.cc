





#include <stdio.h>

int x = 0;

class A {
    public:
        int a1, a2, a3;
        A(){ a1 = a2 = a3 = 0; }
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
        B() { b1 = b2 = b3 = 0; }
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

D::D(int i) 
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

E::E(int i) : C(i+1), D(i+2)
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

    if( dobj.a1 == 0 && dobj.a2 == 0 && dobj.a3 == 0 &&
        dobj.b1 == 0 && dobj.b2 == 0 && dobj.b3 == 0 &&
        dobj.d1 == 1 && dobj.d2 == 2 && dobj.d3 == 3 )
        i++;
     
    if( eobj.a1 == 0 && eobj.a2 == 0 && eobj.a3 == 0 &&
        eobj.b1 == 0 && eobj.b2 == 0 && eobj.b3 == 0 &&
        eobj.c1 == 2 && eobj.c2 == 3 && eobj.c3 == 4 &&
        eobj.d1 == 6 && eobj.d2 == 7 && eobj.d3 == 8 &&
        eobj.e1 == 7 && eobj.e2 == 8 && eobj.e3 == 9 )
        i++;

    if( i == 3 )
        printf("ok\n");
    else
        printf("ng\n");
}
