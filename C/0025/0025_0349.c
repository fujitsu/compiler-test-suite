#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

union { int y;  CL x; } x;

CL foo()
{
   CL z = 7893457.1793 + 12345.3456i; x.x =  7893457.1793 + 12345.3456i; x.x = x.x * z;
   printf("%.5Lf %.5Lf\n",creall(x.x),cimagl(x.x));
   return x.x;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
