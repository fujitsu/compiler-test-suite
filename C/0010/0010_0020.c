#include <stdio.h>

#ifdef NO_LONG_LONG
#define LONG_DOUBLE   double
#else
#define LONG_DOUBLE   long double
#endif

LONG_DOUBLE f1(LONG_DOUBLE a);

int main()
{
   LONG_DOUBLE ld;

   ld = f1((LONG_DOUBLE)10.1);
   if(ld == (LONG_DOUBLE)10.1)
     printf("***** 01 **** O      K***\n");
   else
     printf("***** 01 **** N      G***\n");

}

LONG_DOUBLE f1(LONG_DOUBLE a)
{
   return a;
}
