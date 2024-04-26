#include  <stdio.h>

int main()
{
#ifdef NO_LONG_DOUBLE
   double f1(double a),ld;
   ld = f1((double)10.1);
   if(ld == (double)10.1)
#else
   long double f1(long double a),ld;
   ld = f1((long double)10.1);
   if(ld == (long double)10.1)
#endif
     printf("***** 01 **** O      K***\n");
   else
     printf("***** 01 **** N      G***\n");

}
#ifdef NO_LONG_DOUBLE
double f1(double a)
#else
long double f1(long double a)
#endif
{
   return a;
}
