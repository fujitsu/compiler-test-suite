#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

struct { int y;  CL x; } x, *p;

CL foo()
{
   CL q = 7893457.1793 + 12345.3456i; p = &x; p->x = 7893457.1793 + 12345.3456i; p->x = p->x * q;
   return p->x;
}

int main()
{
   CL x = foo();
   printf("%.5Lf %.5Lf \n",creall(x),cimagl(x));
   return 0;
}
