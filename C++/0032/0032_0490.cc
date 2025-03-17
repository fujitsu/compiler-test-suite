
#include <stdio.h>

struct A { public: int a; };

struct X : private A {
    public:
        X(int i) { a = i; }
        friend A *f(X *px) { return px; }
        A *mem(void) { return this; }
        int chk(int i) { return a == i; }
};
int main()
{
    X xobj1(3), xobj2(10);
    A *pa1, *pa2;

    pa1 = f(&xobj1);
    pa2 = xobj2.mem();

    if( xobj1.chk(3) && xobj2.chk(10) )
        printf("ok\n");
    else
        printf("ng\n");
}
