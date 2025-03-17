





#include <stdio.h>

int x = 0, y = 0, z = 0;

class A { public: int a; A(int i) : a(i) { } };

void f(int, int);
void f(int, A);
void f(int, double);
int main()
{
    char c = '1';
    short s = 2;
    enum EN { e0, e1, e2, e3, e4 } en = e4;
    struct ST { int i:4; } st;
    float fl = 6.0f;

    st.i = 5;

    f(1,0);
    f(1,c);
    f(1,s);
    f(1,e3);
    f(1,en);
    f(1,st.i);

    f(1,fl);
    f(1,7.0);

    if( x == 69 && y == 0 && z == 15 )
        printf("ok\n");
    else
        printf("ng\n");
}

void f(int i, int j)
{
    x += i + j;
}

void f(int i, A aobj)
{
    y += i + aobj.a;
}

void f(int i, double d)
{
    z += i + (int)d;
}
