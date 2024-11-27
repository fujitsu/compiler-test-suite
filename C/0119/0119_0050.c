#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   float sub(),f=0.0;
   double      d;

   d = 1.0;
   f = sub(f,d);

   if(f == 1.0)
      printf("**** SCOSC15 *** O    K ****\n");
   else
      printf("**** SCOSC15 *** N    G **** val = %x\n",f);
exit (0);
}
float sub(f,d)
  float  f;
  double d;
{
    f = d;
    return f;
}
