#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CD arg, int len)
{
  if(len == 8)
    printf("%f %f\n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf\n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf\n",creall(arg),cimagl(arg));
}

union { int y;  CD x; } x;

CD bar(CD arg)
{
  dump(arg, sizeof(arg));
  return arg;
}

CD foo()
{
   x.x =  7893457.1793 + 12345.3456i; x.x = x.x * (2.1234 + 2.1234i);
   return bar(x.x);
}

int main()
{
   volatile int X = foo();
   return 0;	
}
