#include  <stdio.h>

int main()
{
   struct tag
   {
      unsigned char       b1 : 1;
      unsigned short int  b2 : 3;
      unsigned long int   b3 : 5;
   } a;

   a.b1 = 0;
   if (a.b1!=0)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b1!=1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   a.b2 = 0;
   if (a.b2!=0)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b2!=3)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (a.b2!=7)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   a.b3 = 0;
   if (a.b3!=0)
      printf ("***** ng *****\n");
   else
      printf ("***** ok *****\n");
   if (a.b3!=1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   if (a.b3!=31)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
