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


static CL y[1];

CL foo()
{
   extern CL x[1]; x[0] = 7893457.1793 + 12345.3456i; y[0] = 7893457.1793 + 12345.3456i; x[0] += ( x[0] == y[0] )? 10.1234 : 20.1234;
   return x[0];
}

CL x[1];

int main()
{
   CL x = foo();
   dump(x, sizeof(x));
   return 0;
}
