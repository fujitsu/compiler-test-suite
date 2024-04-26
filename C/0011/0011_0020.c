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

   signed char        c1;
   signed short int   c2;
   signed long int    c3;
   unsigned char      c4;
   unsigned short int c5;
   unsigned long  int c6;

   printf ("          \n");

   a.b1 = 0x01;
   c1 = a.b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = a.b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   a.b2 = 1;
   c1 = a.b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = a.b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = a.b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = a.b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   a.b3 = 1;
   c1 = a.b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = a.b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = a.b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = a.b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = a.b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = a.b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   a.b4 = 0x01;
   c1 = a.b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = a.b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   a.b5 = 1;
   c1 = a.b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = a.b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = a.b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = a.b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   a.b6 = 1;
   c1 = a.b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = a.b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = a.b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = a.b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = a.b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = a.b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");


   printf ("          \n");

   x = &a;

   x->b1 = 0x01;
   c1 = x->b1;
   if (c1==1)
      printf ("BLOAD1(I1,I1) OK\n");
   else
      printf ("BLOAD1(I1,I1) NG\n");
   c4 = x->b1;
   if (c4==1)
      printf ("BLOAD1(U1,I1) OK\n");
   else
      printf ("BLOAD1(U1,I1) NG\n");

   x->b2 = 1;
   c1 = x->b2;
   if (c1==1)
      printf ("BLOAD2(I1,I2) OK\n");
   else
      printf ("BLOAD2(I1,I2) NG\n");
   c2 = x->b2;
   if (c2==1)
      printf ("BLOAD1(I2,I2) OK\n");
   else
      printf ("BLOAD1(I2,I2) NG\n");
   c4 = x->b2;
   if (c4==1)
      printf ("BLOAD2(U1,I2) OK\n");
   else
      printf ("BLOAD2(U1,I2) NG\n");
   c5 = x->b2;
   if (c5==1)
      printf ("BLOAD1(U2,I2) OK\n");
   else
      printf ("BLOAD1(U2,I2) NG\n");

   x->b3 = 1;
   c1 = x->b3;
   if (c1==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c2 = x->b3;
   if (c2==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c3 = x->b3;
   if (c3==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");
   c4 = x->b3;
   if (c4==1)
      printf ("BLOAD2(I1,I4) OK\n");
   else
      printf ("BLOAD2(I1,I4) NG\n");
   c5 = x->b3;
   if (c5==1)
      printf ("BLOAD2(I2,I4) OK\n");
   else
      printf ("BLOAD2(I2,I4) NG\n");
   c6 = x->b3;
   if (c6==1)
      printf ("BLOAD1(I4,I4) OK\n");
   else
      printf ("BLOAD1(I4,I4) NG\n");

   x->b4 = 0x01;
   c1 = x->b4;
   if (c1==1)
      printf ("BLOAD1(I1,U1) OK\n");
   else
      printf ("BLOAD1(I1,U1) NG\n");
   c4 = x->b4;
   if (c4==1)
      printf ("BLOAD1(U1,U1) OK\n");
   else
      printf ("BLOAD1(U1,U1) NG\n");

   x->b5 = 1;
   c1 = x->b5;
   if (c1==1)
      printf ("BLOAD3(I1,U2) OK\n");
   else
      printf ("BLOAD3(I1,U2) NG\n");
   c2 = x->b5;
   if (c2==1)
      printf ("BLOAD1(I2,U2) OK\n");
   else
      printf ("BLOAD1(I2,U2) NG\n");
   c4 = x->b5;
   if (c4==1)
      printf ("BLOAD3(U1,U2) OK\n");
   else
      printf ("BLOAD3(U1,U2) NG\n");
   c5 = x->b5;
   if (c5==1)
      printf ("BLOAD1(U2,U2) OK\n");
   else
      printf ("BLOAD1(U2,U2) NG\n");

   x->b6 = 1;
   c1 = x->b6;
   if (c1==1)
      printf ("BLOAD4(I1,U4) OK\n");
   else
      printf ("BLOAD4(I1,U4) NG\n");
   c2 = x->b6;
   if (c2==1)
      printf ("BLOAD4(I2,U4) OK\n");
   else
      printf ("BLOAD4(I2,U4) NG\n");
   c3 = x->b6;
   if (c3==1)
      printf ("BLOAD1(I4,U4) OK\n");
   else
      printf ("BLOAD1(I4,U4) NG\n");
   c4 = x->b6;
   if (c4==1)
      printf ("BLOAD4(U1,U4) OK\n");
   else
      printf ("BLOAD4(U1,U4) NG\n");
   c5 = x->b6;
   if (c5==1)
      printf ("BLOAD4(U2,U4) OK\n");
   else
      printf ("BLOAD4(U2,U4) NG\n");
   c6 = x->b6;
   if (c6==1)
      printf ("BLOAD1(U4,U4) OK\n");
   else
      printf ("BLOAD1(U4,U4) NG\n");
}
