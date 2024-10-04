#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CL arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

struct { int y;  CL x; } x;

CL foo()
{
   x.x =  7893457.1793 + 12345.3456i; if(x.x == 7893457.1793 + 12345.3456i)x.x += x.x;
   return x.x;
}

int main()
{
   CL x = foo();
   dump(x, sizeof(x));
   return 0;	
}
