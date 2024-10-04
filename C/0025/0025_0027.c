#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(CF arg, int len)
{
  if(len == 8)
    printf("%f %f\n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf\n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf\n",creall(arg),cimagl(arg));
}



CF bar(CF arg)
{
  dump(arg, sizeof(arg));
  return arg;
}

CF foo()
{
   CF x = 7893457.1793 + 12345.3456i,y = 7893457.1793 + 12345.3456i; x = x - y;
   return bar(x);
}

int main()
{
   volatile int X = foo();
   return 0;	
}
