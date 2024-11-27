#include <stdlib.h>
#include <math.h>
#include  <stdio.h>

#define dx(x) ((x)>=0 ? (x) : -(x))
int main()
{
   long double fun(),ld,ldarg;

   ldarg=80.0l;
   ld = fun(ldarg);
   if(dx(ld - 20.0l)< 1e-37l)
     printf("***** SCOLD03 **** O      K ***\n");
   else
     printf("***** SCOLD03 **** N      G ***\n");

exit (0);
}

long double fun(long double arg)
{
   long double number,subfun();

   number=2.0l;
   number=subfun(arg/number);
   return number;
}

long double subfun(long double subarg)
{
   long double subnumber;

   subnumber=2.0l;
   return (subarg/subnumber);
}
