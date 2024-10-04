#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

struct { int y;  CL x; } x, *p;

CL foo()
{
   CL q = 7893457.1793 + 12345.3456i; p = &x; p->x = 7893457.1793 + 12345.3456i; p->x = p->x * q;
   printf("%.5Lf %.5Lf\n",creall(p->x),cimagl(p->x));
   return p->x;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
