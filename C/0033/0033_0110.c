#include<stdio.h>
#include<complex.h>

#define CL _Complex long double



CL foo()
{
   CL x = 7893457.1793 + 12345.3456i; CL *p = &x; *p = *p * x;
   return *p;
}

int main()
{
   CL x = foo();
   printf("%.5Lf %.5Lf \n",creall(x),cimagl(x));
   return 0;
}
