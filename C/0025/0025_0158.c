#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

CL g() { return 7893457.1793 + 12345.3456i; }

CL foo()
{
   CL x = 7893457.1793 + 12345.3456i; x = x * g();
   printf("%.5Lf %.5Lf\n",creall(x),cimagl(x));
   return x;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
