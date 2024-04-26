#include <stdio.h>

long double fun(long double arg);
long double subfun(long double subarg);

#define dx(x) ((x)>=0 ? (x) : -(x))
int main()
{
   long double ld,ldarg;

   ldarg=80.0l;
   ld = fun(ldarg);
   if(dx(ld - 20.0l)< 1e-37l)
     printf("***** O      K *****\n");
   else
     printf("**** N      G *****\n");

}

long double fun(long double arg)
{
   long double constant;

   constant=2.0l;
   constant=subfun(arg/constant);
   return constant;
}

long double subfun(long double subarg)
{
   long double subconstant;

   subconstant=2.0l;
   return (subarg/subconstant);
}
