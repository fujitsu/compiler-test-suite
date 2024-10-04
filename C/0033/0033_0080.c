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



CL foo()
{
   ;
   return ((100.1234 + 100.1234i) + (10.1234 + 10.1234i));
}

int main()
{
   CL x = foo();
   dump(x, sizeof(x));
   return 0;	
}
