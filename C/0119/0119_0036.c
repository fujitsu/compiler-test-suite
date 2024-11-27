#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   long double f1(),ld;

   ld = f1((long double)10.1);
   if(ld == (long double)10.1)
     printf("***** SCOLD02 - 01 **** O      K***\n");
   else
     printf("***** SCOLD02 - 01 **** N      G***\n");

exit (0);
}

long double f1(long double a)
{
   return a;
}
