#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   static long int a[6]={ 1,1,1,1,1,1 };
   static float    b[2]={ 1.0,1.0 };

   long int c;
   long int d;
   double      e;
   long double f;

   c = a[0] <  2;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[1] <= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[2] == 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[3] >  0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[4] >= 1;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c = a[5] != 0;
   if (c==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

      if (a[0]< 2)
         goto y1;
      else
         printf ("***** ng *****\n");
   x1:
      if (a[1]<=1)
         goto y2;
      else
         printf ("***** ng *****\n");
   x2:
      if (a[2]==1)
         goto y3;
      else
         printf ("***** ng *****\n");
   x3:
      if (a[3]> 0)
         goto y4;
      else
         printf ("***** ng *****\n");
   x4:
      if (a[4]>=1)
         goto y5;
      else
         printf ("***** ng *****\n");
   x5:
      if (a[5]!=0)
         goto y6;
      else
         printf ("***** ng *****\n");
         goto end;

   y1:
      printf ("***** ok *****\n");
      goto x1;
   y2:
      printf ("***** ok *****\n");
      goto x2;
   y3:
      printf ("***** ok *****\n");
      goto x3;
   y4:
      printf ("***** ok *****\n");
      goto x4;
   y5:
      printf ("***** ok *****\n");
      goto x5;
   y6:
      printf ("***** ok *****\n");

   end:
      printf ("***** end *****\n");
exit (0);
}
