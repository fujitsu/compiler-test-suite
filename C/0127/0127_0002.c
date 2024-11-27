#include <stdlib.h>

#include <stdio.h>
#include <math.h>
struct tag{                                    
           double      a;
           double      b;
          }x[1000];
int main()                                         
{
double   la[1000];                              
double   lb[1000];
long int i=0;
x[0].a=0.000;
x[0].b=1.000;
for(i*=0;i<999;i++)
   {
   x[i+1].a=x[i].a+0.001;
   x[i+1].b=x[i].b-0.001;
   }
for(i=0;i<1000;i++)
   {
   printf("x[%ld].a => %g  ",i,x[i].a);
   printf("x[%ld].b => %g  ",i,x[i].b);
   printf("\n");
   }
for(i=0;i<1000;i++)
   {
   la[i]=sin(x[i].a*(double)i);
   lb[i]=cos(x[i].b*(double)i);
   }
for(i=0;i<1000;i++)
   {
   printf("la[%ld] => %g   ",i,la[i]);
   printf("lb[%ld] => %g   ",i,lb[i]);
   printf("\n");
   }
for(i=0;i<1000;i++)
   {
   la[i]=pow(fabs(la[i]),2.000);
   lb[i]=pow(fabs(lb[i]),1.000);
   }
for(i=0;i<1000;i++)
   {
   printf("la[%ld] => %g   ",i,la[i]);
   printf("lb[%ld] => %g   ",i,lb[i]);
   printf("\n");
   }
exit(0);
}

