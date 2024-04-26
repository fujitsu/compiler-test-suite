#include  <stdio.h>

int main()
{
   static long int a[6]={ 1,1,1,1,1,1 };
   static float    b[2]={ 1.0,1.0 };

   long int c=1;
   long int d;
   long int e;
   double      f=1.0;
#ifdef NO_LONG_DOUBLE
   double g=1.0;
#else
   long double g=1.0;
#endif
   d = a[0] + c;
   if (d==2)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   d = a[1] - c;
   if (d==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   d = a[2] * c;
   if (d==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   d = a[3] / c;
   if (d==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   d = a[4] % c;
   if (d==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   e = a[0] & 1;
   if (e==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   e = a[1] | 1;
   if (e==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
/* e = a[2] ^ 1; */

   f = (double) b[0];
   if (f==1.0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
#ifdef NO_LONG_DOUBLE
   g = (double) b[1];
#else
   g = (long double) b[1];
#endif
   if (g==1.0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
