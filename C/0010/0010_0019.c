#include <stdio.h>

long double f1(int a);
long double f2(long double *ld);

int main()
{
   long double ld,arg;
   int a;

   a = 10;

   ld = f1(a);
   if(ld == 10.5)
     printf("***** 01 **** O      K***\n");
   else
     printf("***** 01 **** N      G***\n");

   f2(&arg);
   if(arg == 20.5)
     printf("***** 02 **** O      K***\n");
   else
     printf("***** 02 **** N      G***\n");
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
