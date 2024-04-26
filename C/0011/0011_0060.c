#include  <stdio.h>

int main()
{
#if NO_LONG_DOUBLE
   double f1(int a),f2(double *ld),ld,arg;
#else
   long double f1(int a),f2(long double *ld),ld,arg;
#endif
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

#if NO_LONG_DOUBLE
double f1(int a)
{
   double lld;
   lld = (double)a + 0.5;
#else
long double f1(int a)
{
   long double lld;
   lld = (long double)a + 0.5;
#endif
   return lld;
}

#if NO_LONG_DOUBLE
double f2(double *ld)
{
   double ld2;
#else
long double f2(long double *ld)
{
   long double ld2;
#endif
   *ld = 20.5;
   ld2 = *ld;
   return ld2;
}
