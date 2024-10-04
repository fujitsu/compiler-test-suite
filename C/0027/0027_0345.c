#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

void dump(CL arg)
{
    printf("%.5Lf %.5Lf \n",creall(arg),cimagl(arg));
}

union { int y;  CL x; } x;


CL foo()
{
   CL result, *P = &result;
   CL resultarray[10];
   CL z = 7893457.1793 + 12345.3456i; x.x =  7893457.1793 + 12345.3456i; x.x = x.x * z;
   result = (x.x);
   *P = (x.x);
   resultarray[9] = (x.x);
   dump(result);
   dump(*P);
   dump(resultarray[9]);
   return result;
}

int main()
{
   volatile int X = foo();
   return 0;	
}
