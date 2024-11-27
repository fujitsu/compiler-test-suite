#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   long double f1(),f2(),ld,arg;
   int a;

   a = 10;
   ld = f1(a);
   if(ld == 10.5)
     printf("***** SCOLD01 - 01 **** O      K***\n");
   else
     printf("***** SCOLD01 - 01 **** N      G***\n");

   f2(&arg);
   if(arg == 20.5)
     printf("***** SCOLD01 - 02 **** O      K***\n");
   else
     printf("***** SCOLD01 - 02 **** N      G***\n");
exit (0);
}

long double f1(int a)
{
   long double lld;

   lld = (long double)a + 0.5;
   return lld;
}

long double f2(long double *ld)
{
   long double ld2;
   *ld = 20.5;
   ld2 = *ld;
   return ld2;
}
