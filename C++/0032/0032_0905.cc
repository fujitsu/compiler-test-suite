





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

class C : public A, public B {
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
int main()
{
    C cobj(1);

    if( cobj.a1 == 3 && cobj.a2 == 4 && cobj.a3 == 5 &&
        cobj.b1 == 5 && cobj.b2 == 6 && cobj.b3 == 7 &&
        cobj.c1 == 7 && cobj.c2 == 8 && cobj.c3 == 9 && x == 9 )
        printf("ok\n");
    else
        printf("ng\n");
}
