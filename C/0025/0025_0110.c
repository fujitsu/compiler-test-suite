#include<stdio.h>
#include<complex.h>

#define CL _Complex long double



CL foo()
{
   CL x = 7893457.1793 + 12345.3456i; CL *p = &x; *p = *p * x;
   printf("%.5Lf %.5Lf\n",creall(*p),cimagl(*p));
   return *p;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
