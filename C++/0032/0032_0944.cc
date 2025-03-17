





#include <stdio.h>

int a = 0, b = 0, c = 0;

class X { public : int x; X(int i) : x(i) { } };

void f(int i, X *px) { px->x++; a |= i; }
void f(int i, const X *px) { b |= i; }
void f(int i, volatile X *px) { px->x += 2; c |= i; }

void g(int i, const X *px) { b |= i; }
void g(int i, volatile X *px) { px->x += 3; c |= i; }

void h(int i, X *px) { px->x += 4; a |= i; }
void h(int i, volatile X *px) { px->x += 5; c |= i; }

void i(int i, X *px) { px->x += 6; a |= i; }
void i(int i, const X *px) { b |= i; }
int main()
{
    int count = 0;
    X xobj = 1;
    const X cxobj = 1;
    volatile X vxobj = 1;
    X *px = &xobj;
    const X *pcx = &cxobj;
    volatile X *pvx = &vxobj;

    f(1,px);
    if( xobj.x == 2 && a == 1 ) count++;

    f(1,pcx);
    if( cxobj.x == 1 && b == 1 ) count++;

    f(1,pvx);
    if( vxobj.x == 3 && c == 1 ) count++;

    g(2,pcx);
    if( cxobj.x == 1 && b == 3 ) count++;

    g(2,pvx);
    if( vxobj.x == 6 && c == 3 ) count++;

    h(4,px);
    if( xobj.x == 6 && a == 5 ) count++;

    i(8,px);
    if( xobj.x == 12 && a == 13 ) count++;

    if( count == 7 )
        printf("ok\n");
    else
        printf("ng\n");
}
