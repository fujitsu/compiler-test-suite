#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   struct tag
   {
      unsigned char       b1 : 3;
      unsigned short int  b2 : 3;
      unsigned long int   b3 : 3;
   } a;

   a.b1 = 0;
   if (a.b1==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (a.b1==1)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b1==127)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");

   a.b2 = 0;
   if (a.b2==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (a.b2==1)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b2==127)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");

   a.b3 = 0;
   if (a.b3==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (a.b3==1)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b3==127)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
exit (0);
}
