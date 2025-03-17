





#include <stdio.h>

struct X {
    public:
        int i;
        static int si;
        void func();
        static void sfunc1(X *);
        static void sfunc2(X &);
};

void X::func()
{
    i++;
    si++;
}

 void X::sfunc1(X *p)
{
    p->i *= 2;
    si *= 2;
}

 void X::sfunc2(X &r)
{
    r.i <<= 2;
    si <<= 2;
}

int X::si;
int main()
{
    X xobj1, xobj2;

    xobj1.i = 1;
    xobj2.i = 2;
    X::si = 5;
    xobj1.func();
    xobj1.sfunc1(&xobj1);
    xobj2.func();
    xobj2.sfunc2(xobj2);

    if( xobj1.i == 4 && xobj2.i == 12 && X::si == 52 )
        printf("ok\n");
    else
        printf("ng\n");
}
