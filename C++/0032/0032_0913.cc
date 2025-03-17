





#include <stdio.h>

int a = 0;
int b = 0;

class X {
    private:
        X() { }
        X(int i) : x(i) { a++; }
        ~X() { b++; }
    public:
        int x;
        static int si;
#ifdef __clang__
        friend X *func(int i);
#else
        friend X *func(int i=0);
#endif
        X *makeX(int i=0);
        void elim() { delete this; }
};

int X::si = 0;

X *X::makeX(int i)
{
    return new X(i);
}

X *func(int i)
{
    return new X(i);
}
int main()
{
    int i = 0;

    X::si ++;
     
    X *px1 = func(1);
    X *px2 = px1->makeX(2);

    if( X::si == 1 && px1->x == 1 && px2->x == 2 && a == 2 )
        i++;

    px1->elim();
    px2->elim();

    if( b == 2 ) i++;

    if( i == 2 )
        printf("ok\n");
    else
        printf("ng\n");
}
