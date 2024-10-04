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
   unsigned long long int result, *P = &result;
   unsigned long long int resultarray[10];
   unsigned long long int x = 20; CF y = 10.1234 + 12345.3456i; x -= y;
   result = (x);
   *P = (x);
   resultarray[9] = (x);
   dump(result, sizeof(result));
   dump(*P, sizeof(result));
   dump(resultarray[9], sizeof(result));
   return result;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
