#include  <stdio.h>

#if INT64
#define int __int32
#endif
int main()
{
   struct tag
   {
      unsigned char          b1 : 3;
      unsigned short         b2 : 3;
      unsigned int           b3 : 3;
   } ;

   struct tag a = { 1,1,1 };

   char          c1;
   short         c2;
   int           c3;

   c1 = a.b1;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c1 = a.b2;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c1 = a.b3;
   if (c1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b1;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b2;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c2 = a.b3;
   if (c2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b1;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b2;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   c3 = a.b3;
   if (c3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
