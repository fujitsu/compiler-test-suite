#include  <stdio.h>

#if INT64
#define int __int32
#endif
int main()
{
   struct tag
   {
      signed char            b1 : 3;
      signed short           b2 : 3;
      signed int             b3 : 3;
      unsigned char          b4 : 3;
      unsigned short         b5 : 3;
      unsigned int           b6 : 3;
   } a;

   char  c1=1;

   a.b1 = c1;
   if (a.b1==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a.b2 = c1;
   if (a.b2==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a.b3 = c1;
   if (a.b3==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a.b4 = c1;
   if (a.b4==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a.b5 = c1;
   if (a.b5==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a.b6 = c1;
   if (a.b6==1)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
}
