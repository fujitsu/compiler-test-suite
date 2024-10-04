#include<stdio.h>
#include<complex.h>

#define CF _Complex float
#define CD _Complex double
#define CL _Complex long double

void complex_print(CF arg)
{
  int len=sizeof(arg);	
  if(len == 8)
    printf("%f %f \n",crealf(arg),cimagf(arg));
  else if(len == 16)
    printf("%lf %lf \n",creal(arg),cimag(arg));
  else 
    printf("%Lf %Lf \n",creall(arg),cimagl(arg));
}

void foo()
{
   struct { CF a,b;} x[] = {[1] = {.a = 8}};
   complex_print(x[0].a);
   complex_print(x[0].b);
   complex_print(x[1].a);
   complex_print(x[1].b);
}

int main()
{
   foo();
   return 0;	
}