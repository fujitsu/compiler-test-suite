#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

void dump(CL arg)
{
    printf("%.5Lf %.5Lf \n",creall(arg),cimagl(arg));
}

CL g() { return 7893457.1793 + 12345.3456i; }


CL foo()
{
   CL result, *P = &result;
   CL resultarray[10];
   CL x = 7893457.1793 + 12345.3456i; x = x * g();
   result = (x);
   *P = (x);
   resultarray[9] = (x);
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
