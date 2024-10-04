#include<stdio.h>
#include<complex.h>

#define CL _Complex long double

void dump(CL arg)
{
    printf("%.5Lf %.5Lf \n",creall(arg),cimagl(arg));
}

union { int y;  CL x; } x, *p;


CL foo()
{
   CL result, *P = &result;
   CL resultarray[10];
   CL q = 7893457.1793 + 12345.3456i; p = &x; p->x = 7893457.1793 + 12345.3456i; p->x = p->x * q;
   result = (p->x);
   *P = (p->x);
   resultarray[9] = (p->x);
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
