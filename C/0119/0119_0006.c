#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   struct tag
   {
      signed char        b1 : 1;
      signed short int   b2 : 1;
      signed long int    b3 : 1;
      unsigned char      b4 : 1;
      unsigned short int b5 : 1;
      unsigned long int b6 : 1;
   } a;

   struct tag *x;


   a.b1 = (signed char)1;
   a.b2 = (signed char)1;
   a.b3 = (signed char)1;
   a.b4 = (signed char)1;
   a.b5 = (signed char)1;
   a.b6 = (signed char)1;

   if (a.b1==-1)
      printf ("BSTORE1(I1,I1) OK\n");
   else
      printf ("BSTORE1(I1,I1) NG\n");
   if (a.b2==-1)
      printf ("BSTORE1(I2,I1) OK\n");
   else
      printf ("BSTORE1(I2,I1) NG\n");
   if (a.b3==-1)
      printf ("BSTORE1(I4,I1) OK\n");
   else
      printf ("BSTORE1(I4,I1) NG\n");
   if (a.b4==1)
      printf ("BSTORE1(U1,I1) OK\n");
   else
      printf ("BSTORE1(U1,I1) NG\n");
   if (a.b5==1)
      printf ("BSTORE1(U2,I1) OK\n");
   else
      printf ("BSTORE1(U2,I1) NG\n");
   if (a.b6==1)
      printf ("BSTORE1(U4,I1) OK\n");
   else
      printf ("BSTORE1(U4,I1) NG\n");


   a.b1 = (unsigned char)1;
   a.b2 = (unsigned char)1;
   a.b3 = (unsigned char)1;
   a.b4 = (unsigned char)1;
   a.b5 = (unsigned char)1;
   a.b6 = (unsigned char)1;

   if (a.b1==-1)
      printf ("BSTORE1(I1,U1) OK\n");
   else
      printf ("BSTORE1(I1,U1) NG\n");
   if (a.b2==-1)
      printf ("BSTORE1(I2,U1) OK\n");
   else
      printf ("BSTORE1(I2,U1) NG\n");
   if (a.b3==-1)
      printf ("BSTORE1(I4,U1) OK\n");
   else
      printf ("BSTORE1(I4,U1) NG\n");
   if (a.b4==1)
      printf ("BSTORE1(U1,U1) OK\n");
   else
      printf ("BSTORE1(U1,U1) NG\n");
   if (a.b5==1)
      printf ("BSTORE1(U2,U1) OK\n");
   else
      printf ("BSTORE1(U2,U1) NG\n");
   if (a.b6==1)
      printf ("BSTORE1(U4,U1) OK\n");
   else
      printf ("BSTORE1(U4,U1) NG\n");


   x = &a;

   x->b1 = (signed char)1;
   x->b2 = (signed char)1;
   x->b3 = (signed char)1;
   x->b4 = (signed char)1;
   x->b5 = (signed char)1;
   x->b6 = (signed char)1;

   if (x->b1==-1)
      printf ("BSTORE1(I1,I1) OK\n");
   else
      printf ("BSTORE1(I1,I1) NG\n");
   if (x->b2==-1)
      printf ("BSTORE1(I2,I1) OK\n");
   else
      printf ("BSTORE1(I2,I1) NG\n");
   if (x->b3==-1)
      printf ("BSTORE1(I4,I1) OK\n");
   else
      printf ("BSTORE1(I4,I1) NG\n");
   if (x->b4==1)
      printf ("BSTORE1(U1,I1) OK\n");
   else
      printf ("BSTORE1(U1,I1) NG\n");
   if (x->b5==1)
      printf ("BSTORE1(U2,I1) OK\n");
   else
      printf ("BSTORE1(U2,I1) NG\n");
   if (x->b6==1)
      printf ("BSTORE1(U4,I1) OK\n");
   else
      printf ("BSTORE1(U4,I1) NG\n");


   x->b1 = (unsigned char)1;
   x->b2 = (unsigned char)1;
   x->b3 = (unsigned char)1;
   x->b4 = (unsigned char)1;
   x->b5 = (unsigned char)1;
   x->b6 = (unsigned char)1;

   if (x->b1==-1)
      printf ("BSTORE1(I1,U1) OK\n");
   else
      printf ("BSTORE1(I1,U1) NG\n");
   if (x->b2==-1)
      printf ("BSTORE1(I2,U1) OK\n");
   else
      printf ("BSTORE1(I2,U1) NG\n");
   if (x->b3==-1)
      printf ("BSTORE1(I4,U1) OK\n");
   else
      printf ("BSTORE1(I4,U1) NG\n");
   if (x->b4==1)
      printf ("BSTORE1(U1,U1) OK\n");
   else
      printf ("BSTORE1(U1,U1) NG\n");
   if (x->b5==1)
      printf ("BSTORE1(U2,U1) OK\n");
   else
      printf ("BSTORE1(U2,U1) NG\n");
   if (x->b6==1)
      printf ("BSTORE1(U4,U1) OK\n");
   else
      printf ("BSTORE1(U4,U1) NG\n");
exit (0);
}
