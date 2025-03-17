





#include <stdio.h>

class A {
    private:
        int a1;
    public:
        int a2,a3;
        A(int i, int j) { a1 = i; a2 = j; a3 = f(); }
        int f(void) { return a1 + a2; }
};

struct B {
    private:
        int b1;
    public:
        int b2,b3;
        B(int i, int j) { b1 = i; b2 = j; b3 = f(); }
        int f(void) { return b1 + b2; }
};
int main()
{
    A aobj(2,4);
    B bobj = B(5,10);

    if( aobj.a3 == 6 && bobj.b3 == 15 )
        printf("ok\n");
    else
        printf("ng\n");
}
