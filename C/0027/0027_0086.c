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
   CL result, *P = &result;
   CL resultarray[10];
   ;
   result = (((100.1234 + 100.1234i) * (10.1234 + 10.1234i)));
   *P = (((100.1234 + 100.1234i) * (10.1234 + 10.1234i)));
   resultarray[9] = (((100.1234 + 100.1234i) * (10.1234 + 10.1234i)));
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
