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



CD bar(CD arg)
{
  dump(arg, sizeof(arg));
  return arg;
}

CD foo()
{
   ;
   return bar(((100.1234 + 100.1234i) + (10.1234 + 10.1234i)));
}

int main()
{
   volatile int X = foo();
   return 0;	
}
