#include <stdio.h>

int main()
{
   signed char          a;
   float                b;
   double               c;
   long double          d;
   signed long long int e;

   a = 0x00;

   b = (float) a;
   c = (double) a;
   d = (long double) a;

   if (b==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (c==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (d==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   e = (long long int) b;
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   e = (long long int) c;
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
