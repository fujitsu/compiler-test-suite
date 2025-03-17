





#include <stdio.h>

struct X {
    private:
        int x1;
    protected:
        int x2;
    public:
        int x3;
        int f(int,int);
};

int X::f(int i, int j)
{
    switch( i )
    {
    case 1 : x1 = j;    x2 = j+1;    x3 = j+2;    return 0;
    case 2 : return x2;
    default: return x1 + x3;
    }
}

struct A : private X {
    private:
        int a1;
    protected:
        using X::x2;
        int a2;
    public:
        using X::f;
        int g(int,int);
};

int A::g(int i, int j)
{
    if( i == 1 )
    {
        a1 = j;    a2 = j*2;
        x2++;      x3++;
    }
    else
        return a1 + a2;

    return 0;
}

struct B : public A { 
    public:
        void h(void);
};

void B::h(void)
{
    x2++;     a2++;
}
int main()
{
    A aobj;
    B bobj;

    aobj.f(1,3);
    bobj.f(1,4);
    aobj.g(1,5);
    bobj.g(1,1);
    bobj.h();

    if( aobj.f(0,0) ==  9 && aobj.g(0,0) == 15 && aobj.f(2,0) == 5 && 
        bobj.f(0,0) == 11 && bobj.g(0,0) == 4  && bobj.f(2,0) == 7 )
        printf("ok\n");
    else
        printf("ng\n");
}
