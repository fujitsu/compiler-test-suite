#include  <stdio.h>

int main()
{
   float sub(float f, double d),f;
   double      d;

   d = 1.0;
   f = sub(f,d);

   if(f == 1.0)
      printf("**** O    K ****\n");
   else
      printf("**** N    G **** val = %f\n",f);
}
float sub(float f, double d)
{
    f = d;
    return f;
}
