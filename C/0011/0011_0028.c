#include  <stdio.h>

int main()
{
   signed char        a1=1;
   signed short int   a2=1;
   signed long  int   a3=1;
   unsigned char      a4=1;
   unsigned short int a5=1;
   unsigned long  int a6=1;
   float              a7=1;
   double             a8=1;
#ifdef NO_LONG_DOUBLE
   double        a9=1;
#else
   long double        a9=1;
#endif
   signed long int    b;

   b = 0 - a1;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a2;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a3;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a4;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a5;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a6;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a7;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a8;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   b = 0 - a9;
   if (b==-1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
