#include <stdlib.h>
#include <math.h>
#include  <stdio.h>
int main()
{
   struct tag
   {
      signed char         b1 :  8;
      signed short int    b2 : 16;
      signed long int     b3 : 32;
      unsigned char       b4 :  8;
      unsigned short int  b5 : 16;
      unsigned long int   b6 : 32;
   } a;

   struct tag *x;

   signed char            c1=0x01;
   signed short int       c2=1;
   signed long long int   c3=1;
   unsigned char          c4=0x01;
   unsigned short int     c5=1;
   unsigned long long int c6=1;

   printf ("          \n");

   a.b2 = c1;
   if (a.b2==1)
      printf ("BSTORE7(I2,I1) OK\n");
   else
      printf ("BSTORE7(I2,I1) NG\n");

   a.b2 = c4;
   if (a.b2==1)
      printf ("BSTORE8(I2,U1) OK\n");
   else
      printf ("BSTORE8(I2,U1) NG\n");

   a.b3 = c1;
   if (a.b3==1)
      printf ("BSTORE7(I4,I1) OK\n");
   else
      printf ("BSTORE7(I4,I1) NG\n");

   a.b3 = c2;
   if (a.b3==1)
      printf ("BSTORE8(I4,I2) OK\n");
   else
      printf ("BSTORE8(I4,I2) NG\n");

   a.b3 = c4;
   if (a.b3==1)
      printf ("BSTORE8(I4,U1) OK\n");
   else
      printf ("BSTORE8(I4,U1) NG\n");

   a.b3 = c5;
   if (a.b3==1)
      printf ("BSTORE8(I4,U2) OK\n");
   else
      printf ("BSTORE8(I4,U2) NG\n");

   a.b5 = c1;
   if (a.b5==1)
      printf ("BSTORE3(U2,I1) OK\n");
   else
      printf ("BSTORE3(U2,I1) NG\n");

   a.b5 = c4;
   if (a.b5==1)
      printf ("BSTORE4(U2,U1) OK\n");
   else
      printf ("BSTORE4(U2,U1) NG\n");

   a.b6 = c1;
   if (a.b6==1)
      printf ("BSTORE3(U4,I1) OK\n");
   else
      printf ("BSTORE3(U4,I1) NG\n");

   a.b6 = c2;
   if (a.b6==1)
      printf ("BSTORE4(U4,I2) OK\n");
   else
      printf ("BSTORE4(U4,I2) NG\n");

   a.b6 = c4;
   if (a.b6==1)
      printf ("BSTORE4(U4,U1) OK\n");
   else
      printf ("BSTORE4(U4,U1) NG\n");

   a.b6 = c5;
   if (a.b6==1)
      printf ("BSTORE4(U4,U2) OK\n");
   else
      printf ("BSTORE4(U4,U2) NG\n");

   a.b1 = c3;
   a.b2 = c3;
   a.b3 = c3;
   a.b4 = c3;
   a.b5 = c3;
   a.b6 = c3;
   if (a.b1==1)
      printf ("BSTORE9(I1,I8) OK\n");
   else
      printf ("BSTORE9(I1,I8) NG\n");
   if (a.b2==1)
      printf ("BSTORE9(I2,I8) OK\n");
   else
      printf ("BSTORE9(I2,I8) NG\n");
   if (a.b3==1)
      printf ("BSTORE9(I4,I8) OK\n");
   else
      printf ("BSTORE9(I4,I8) NG\n");
   if (a.b4==1)
      printf ("BSTORE5(U1,I8) OK\n");
   else
      printf ("BSTORE5(U1,I8) NG\n");
   if (a.b5==1)
      printf ("BSTORE5(U2,I8) OK\n");
   else
      printf ("BSTORE5(U2,I8) NG\n");
   if (a.b6==1)
      printf ("BSTORE5(U4,I8) OK\n");
   else
      printf ("BSTORE5(U4,I8) NG\n");

   a.b1 = c6;
   a.b2 = c6;
   a.b3 = c6;
   a.b4 = c6;
   a.b5 = c6;
   a.b6 = c6;
   if (a.b1==1)
      printf ("BSTORE9(I1,U8) OK\n");
   else
      printf ("BSTORE9(I1,U8) NG\n");
   if (a.b2==1)
      printf ("BSTORE9(I2,U8) OK\n");
   else
      printf ("BSTORE9(I2,U8) NG\n");
   if (a.b3==1)
      printf ("BSTORE9(I4,U8) OK\n");
   else
      printf ("BSTORE9(I4,U8) NG\n");
   if (a.b4==1)
      printf ("BSTORE5(U1,U8) OK\n");
   else
      printf ("BSTORE5(U1,U8) NG\n");
   if (a.b5==1)
      printf ("BSTORE5(U2,U8) OK\n");
   else
      printf ("BSTORE5(U2,U8) NG\n");
   if (a.b6==1)
      printf ("BSTORE5(U4,U8) OK\n");
   else
      printf ("BSTORE5(U4,U8) NG\n");


   printf ("          \n");

   x = &a;

   x->b2 = c1;
   if (x->b2==1)
      printf ("BSTORE7(I2,I1) OK\n");
   else
      printf ("BSTORE7(I2,I1) NG\n");

   x->b2 = c4;
   if (x->b2==1)
      printf ("BSTORE8(I2,U1) OK\n");
   else
      printf ("BSTORE8(I2,U1) NG\n");

   x->b3 = c1;
   if (x->b3==1)
      printf ("BSTORE7(I4,I1) OK\n");
   else
      printf ("BSTORE7(I4,I1) NG\n");

   x->b3 = c2;
   if (x->b3==1)
      printf ("BSTORE8(I4,I2) OK\n");
   else
      printf ("BSTORE8(I4,I2) NG\n");

   x->b3 = c4;
   if (x->b3==1)
      printf ("BSTORE8(I4,U1) OK\n");
   else
      printf ("BSTORE8(I4,U1) NG\n");

   x->b3 = c5;
   if (x->b3==1)
      printf ("BSTORE8(I4,U2) OK\n");
   else
      printf ("BSTORE8(I4,U2) NG\n");

   x->b5 = c1;
   if (x->b5==1)
      printf ("BSTORE3(U2,I1) OK\n");
   else
      printf ("BSTORE3(U2,I1) NG\n");

   x->b5 = c4;
   if (x->b5==1)
      printf ("BSTORE4(U2,U1) OK\n");
   else
      printf ("BSTORE4(U2,U1) NG\n");

   x->b6 = c1;
   if (x->b6==1)
      printf ("BSTORE3(U4,I1) OK\n");
   else
      printf ("BSTORE3(U4,I1) NG\n");

   x->b6 = c2;
   if (x->b6==1)
      printf ("BSTORE4(U4,I2) OK\n");
   else
      printf ("BSTORE4(U4,I2) NG\n");

   x->b6 = c4;
   if (x->b6==1)
      printf ("BSTORE4(U4,U1) OK\n");
   else
      printf ("BSTORE4(U4,U1) NG\n");

   x->b6 = c5;
   if (x->b6==1)
      printf ("BSTORE4(U4,U2) OK\n");
   else
      printf ("BSTORE4(U4,U2) NG\n");

   x->b1 = c3;
   x->b2 = c3;
   x->b3 = c3;
   x->b4 = c3;
   x->b5 = c3;
   x->b6 = c3;
   if (x->b1==1)
      printf ("BSTORE9(I1,I8) OK\n");
   else
      printf ("BSTORE9(I1,I8) NG\n");
   if (x->b2==1)
      printf ("BSTORE9(I2,I8) OK\n");
   else
      printf ("BSTORE9(I2,I8) NG\n");
   if (x->b3==1)
      printf ("BSTORE9(I4,I8) OK\n");
   else
      printf ("BSTORE9(I4,I8) NG\n");
   if (x->b4==1)
      printf ("BSTORE5(U1,I8) OK\n");
   else
      printf ("BSTORE5(U1,I8) NG\n");
   if (x->b5==1)
      printf ("BSTORE5(U2,I8) OK\n");
   else
      printf ("BSTORE5(U2,I8) NG\n");
   if (x->b6==1)
      printf ("BSTORE5(U4,I8) OK\n");
   else
      printf ("BSTORE5(U4,I8) NG\n");

   x->b1 = c6;
   x->b2 = c6;
   x->b3 = c6;
   x->b4 = c6;
   x->b5 = c6;
   x->b6 = c6;
   if (x->b1==1)
      printf ("BSTORE9(I1,U8) OK\n");
   else
      printf ("BSTORE9(I1,U8) NG\n");
   if (x->b2==1)
      printf ("BSTORE9(I2,U8) OK\n");
   else
      printf ("BSTORE9(I2,U8) NG\n");
   if (x->b3==1)
      printf ("BSTORE9(I4,U8) OK\n");
   else
      printf ("BSTORE9(I4,U8) NG\n");
   if (x->b4==1)
      printf ("BSTORE5(U1,U8) OK\n");
   else
      printf ("BSTORE5(U1,U8) NG\n");
   if (x->b5==1)
      printf ("BSTORE5(U2,U8) OK\n");
   else
      printf ("BSTORE5(U2,U8) NG\n");
   if (x->b6==1)
      printf ("BSTORE5(U4,U8) OK\n");
   else
      printf ("BSTORE5(U4,U8) NG\n");
exit (0);
}
