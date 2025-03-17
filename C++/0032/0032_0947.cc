





#include <stdio.h>

int data = 0;

void f(char c)         { data |= (c&1); }
void f(int i)          { i <<= 1; data |= i; }
void f(unsigned u)     { u <<= 2; data |= u; }
void f(long l)         { l <<= 3; data |= l; }
void f(float f)        { int i = (int)f; i <<= 4; data |= i; }
void f(double d)       { int i = (int)d; i <<= 5; data |= i; }
void f(long double ld) { int i = (int)ld; i <<= 6; data |= i; }
int main()
{
    f('1');
    f(1);
    f(1u);
    f(1L);
    f(1.0f);
    f(1.0);
    f(1.0l);

    if( data == 127 )
        printf("ok\n");
    else
        printf("ng\n");
}

