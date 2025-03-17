





#include <stdio.h>

int a = 0;
int b = 0;
int c = 0;
int d = 0;

class X {
    protected:
        X() { }
        X(int i) : x(i) { a++; }
        ~X() { b++; }
    public:
        int x;
        X *makeX(int i=0);
#ifdef __clang__
        friend X *funcx(int i);
#else
        friend X *funcx(int i=0);
#endif
        void elim() { delete this; }
};

X *X::makeX(int i) { return new X(i); }
X *funcx(int i) { return new X(i); }

class Y : public X {
    protected:
        Y() { }
        Y(int i) : X(i) { c++; }
        ~Y() { d++; } 
    public:
        Y *makeY(int i=0);
#ifdef __clang__
        friend Y *funcy(int i);
#else
        friend Y *funcy(int i=0);
#endif
        void elim() { delete this; }
};

Y *Y::makeY(int i) { return new Y(i); }
Y *funcy(int i) { return new Y(i); }
int main()
{
    int i = 0;

#ifdef __clang__
    X *px1 = funcx(0);
#else
    X *px1 = funcx();
#endif
    X *px2 = px1->makeX(2);
    Y *py1 = funcy(3);
    Y *py2 = py1->makeY();

    if( px1->x == 0 && px2->x == 2 && py1->x == 3 && py2->x == 0 )
        i++;

    if( a == 4 && b == 0 && c == 2 && d == 0 )
        i++;

    px1->elim();
    px2->elim();

    if( b == 2 ) i++;

    py1->elim();
    py2->elim();

    if( b == 4 && d == 2 ) i++;

    if( i == 4 )
        printf("ok\n");
    else
        printf("ng\n");
}
