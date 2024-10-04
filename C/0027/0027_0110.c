#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

void dump(CL arg)
{
    printf("%.5Lf %.5Lf \n",creall(arg),cimagl(arg));
}




CL foo()
{
   CL result, *P = &result;
   CL resultarray[10];
   CL x = 7893457.1793 + 12345.3456i; CL *p = &x; *p = *p * x;
   result = (*p);
   *P = (*p);
   resultarray[9] = (*p);
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
