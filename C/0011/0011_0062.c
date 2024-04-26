#include  <stdio.h>

#define dx(x) ((x)>=0 ? (x) : -(x))
int main()
{
#ifdef NO_LONG_LONG
   double fun(double arg),ld,ldarg;
#else
   long double fun(long double arg),ld,ldarg;
#endif
   ldarg=80.0l;
   ld = fun(ldarg);
   if(dx(ld - 20.0l)< 1e-37l)
     printf("***** O      K ***\n");
   else
     printf("***** N      G ***\n");

}
#ifdef NO_LONG_LONG
double fun(double arg)
{
   double num,subfun(double subarg);
#else
long double fun(long double arg)
{
   long double num,subfun(long double subarg);
#endif
   num=2.0l;
   num=subfun(arg/num);
   return num;
}
#ifdef NO_LONG_LONG
double subfun(double subarg)
{
   double subnum;
#else
long double subfun(long double subarg)
{
   long double subnum;
#endif
   subnum=2.0l;
   return (subarg/subnum);
}
