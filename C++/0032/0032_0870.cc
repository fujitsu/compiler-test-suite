





#include <stdio.h>

int x = 0;

class A {
    public:
        int a;
        A() { a = x; x++; }
};

struct B {
    public:
        int b;
        B() { b = x; x++; }
};

union C {
    public:
        int c;
        C() { c = x; x++; }
};
int main()
{
    int i;
    A aobj[10] = { A(),A(),A(),A(),A(),A(),A(),A(),A(),A() };
 
    for( i=0; i<10 && aobj[i].a == i ; i++ ) ;
    if( i == 10 )
        x = 1;

    B bobj[5] = { B(),B(),B(),B(),B() };

    for( i=0 ; i<5 && bobj[i].b == i+1 ; i++ ) ;
    if( i == 5 )
        x = 100;

    C cobj[2] = { C(),C() };

    if( cobj[0].c == 100 && cobj[1].c == 101 && x == 102 )
        printf("ok\n");
    else
        printf("ng\n");
}
