#include  <stdio.h>

int main()
{
   signed char          a;
   float                b;
   double               c;
#ifdef NO_LONG_DOUBLE
   double          d;
#else
   long double          d;
#endif
#ifdef NO_LONG_LONG
   signed long int e;
#else
   signed long long int e;
#endif

   a = 0x00;

   b = (float) a;
   c = (double) a;
#ifdef NO_LONG_DOUBLE
   d = (double) a;
#else
   d = (long double) a;
#endif

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
#ifdef NO_LONG_LONG
   e = (long int) b;
#else
   e = (long long int) b;
#endif
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
#ifdef NO_LONG_LONG
   e = (long int) c;
#else
   e = (long long int) c;
#endif
   if (e==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
