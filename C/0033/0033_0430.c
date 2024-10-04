#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void dump(unsigned long long int arg, int len)
{
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}



unsigned long long int foo()
{
   unsigned long long int x = 20; CF y = 10.1234 + 12345.3456i; x -= y;
   return x;
}

int main()
{
   unsigned long long int x = foo();
   dump(x, sizeof(x));
   return 0;	
}
