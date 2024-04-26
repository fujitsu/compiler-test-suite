#include  <stdio.h>

int main()
{
   struct tag
   {
      signed char         b1 : 8;
      signed short int    b2 : 8;
      signed long int     b3 : 8;
      unsigned char       b4 : 8;
      unsigned short int  b5 : 8;
      unsigned long int   b6 : 8;
   } a;

   struct tag *x;

   signed char        c1=1;
   signed short int   c2=1;
   signed long int    c3=1;
   unsigned char      c4=1;
   unsigned short int c5=1;
   unsigned long int  c6=1;

   a.b1 = c1;
   if (a.b1==1)
      printf ("BSTORE2(I1,I1) OK\n");
   else
      printf ("BSTORE2(I2,I1) NG\n");

   a.b1 = c2;
   if (a.b1==1)
      printf ("BSTORE2(I1,I2) OK\n");
   else
      printf ("BSTORE2(I2,I2) NG\n");

   a.b1 = c3;
   if (a.b1==1)
      printf ("BSTORE2(I1,I4) OK\n");
   else
      printf ("BSTORE2(I2,I4) NG\n");

   a.b1 = c4;
   if (a.b1==1)
      printf ("BSTORE2(I1,U1) OK\n");
   else
      printf ("BSTORE2(I2,U1) NG\n");

   a.b1 = c5;
   if (a.b1==1)
      printf ("BSTORE2(I1,U2) OK\n");
   else
      printf ("BSTORE2(I2,U2) NG\n");

   a.b1 = c6;
   if (a.b1==1)
      printf ("BSTORE2(I1,U4) OK\n");
   else
      printf ("BSTORE2(I2,U4) NG\n");


   a.b2 = c1;
   if (a.b2==1)
      printf ("BSTORE2(I2,I1) OK\n");
   else
      printf ("BSTORE2(I2,I1) NG\n");

   a.b2 = c2;
   if (a.b2==1)
      printf ("BSTORE2(I2,I2) OK\n");
   else
      printf ("BSTORE2(I2,I2) NG\n");

   a.b2 = c3;
   if (a.b2==1)
      printf ("BSTORE2(I2,I4) OK\n");
   else
      printf ("BSTORE2(I2,I4) NG\n");

   a.b2 = c4;
   if (a.b2==1)
      printf ("BSTORE2(I2,U1) OK\n");
   else
      printf ("BSTORE2(I2,U1) NG\n");

   a.b2 = c5;
   if (a.b2==1)
      printf ("BSTORE2(I2,U2) OK\n");
   else
      printf ("BSTORE2(I2,U2) NG\n");

   a.b2 = c6;
   if (a.b2==1)
      printf ("BSTORE2(I2,U4) OK\n");
   else
      printf ("BSTORE2(I2,U4) NG\n");


   a.b3 = c1;
   if (a.b3==1)
      printf ("BSTORE2(I4,I1) OK\n");
   else
      printf ("BSTORE2(I4,I1) NG\n");

   a.b3 = c2;
   if (a.b3==1)
      printf ("BSTORE2(I4,I2) OK\n");
   else
      printf ("BSTORE2(I4,I2) NG\n");

   a.b3 = c3;
   if (a.b3==1)
      printf ("BSTORE2(I4,I4) OK\n");
   else
      printf ("BSTORE2(I4,I4) NG\n");

   a.b3 = c4;
   if (a.b3==1)
      printf ("BSTORE2(I4,U1) OK\n");
   else
      printf ("BSTORE2(I4,U1) NG\n");

   a.b3 = c5;
   if (a.b3==1)
      printf ("BSTORE2(I4,U2) OK\n");
   else
      printf ("BSTORE2(I4,U2) NG\n");

   a.b3 = c6;
   if (a.b3==1)
      printf ("BSTORE2(I4,U4) OK\n");
   else
      printf ("BSTORE2(I4,U4) NG\n");


   a.b4 = c1;
   if (a.b4==1)
      printf ("BSTORE2(U1,I1) OK\n");
   else
      printf ("BSTORE2(U1,I1) NG\n");

   a.b4 = c2;
   if (a.b4==1)
      printf ("BSTORE2(U1,I2) OK\n");
   else
      printf ("BSTORE2(U1,I2) NG\n");

   a.b4 = c3;
   if (a.b4==1)
      printf ("BSTORE2(U1,I4) OK\n");
   else
      printf ("BSTORE2(U1,I4) NG\n");

   a.b4 = c4;
   if (a.b4==1)
      printf ("BSTORE2(U1,U1) OK\n");
   else
      printf ("BSTORE2(U1,U1) NG\n");

   a.b4 = c5;
   if (a.b4==1)
      printf ("BSTORE2(U1,U2) OK\n");
   else
      printf ("BSTORE2(U1,U2) NG\n");

   a.b4 = c6;
   if (a.b4==1)
      printf ("BSTORE2(U1,U4) OK\n");
   else
      printf ("BSTORE2(U1,U4) NG\n");


   a.b5 = c1;
   if (a.b5==1)
      printf ("BSTORE2(U2,I1) OK\n");
   else
      printf ("BSTORE2(U2,I1) NG\n");

   a.b5 = c2;
   if (a.b5==1)
      printf ("BSTORE2(U2,I2) OK\n");
   else
      printf ("BSTORE2(U2,I2) NG\n");

   a.b5 = c3;
   if (a.b5==1)
      printf ("BSTORE2(U2,I4) OK\n");
   else
      printf ("BSTORE2(U2,I4) NG\n");

   a.b5 = c4;
   if (a.b5==1)
      printf ("BSTORE2(U2,U1) OK\n");
   else
      printf ("BSTORE2(U2,U1) NG\n");

   a.b5 = c5;
   if (a.b5==1)
      printf ("BSTORE2(U2,U2) OK\n");
   else
      printf ("BSTORE2(U2,U2) NG\n");

   a.b5 = c6;
   if (a.b5==1)
      printf ("BSTORE2(U2,U4) OK\n");
   else
      printf ("BSTORE2(U2,U4) NG\n");


   a.b6 = c1;
   if (a.b6==1)
      printf ("BSTORE2(U4,I1) OK\n");
   else
      printf ("BSTORE2(U4,I1) NG\n");

   a.b6 = c2;
   if (a.b6==1)
      printf ("BSTORE2(U4,I2) OK\n");
   else
      printf ("BSTORE2(U4,I2) NG\n");

   a.b6 = c3;
   if (a.b6==1)
      printf ("BSTORE2(U4,I4) OK\n");
   else
      printf ("BSTORE2(U4,I4) NG\n");

   a.b6 = c4;
   if (a.b6==1)
      printf ("BSTORE2(U4,U1) OK\n");
   else
      printf ("BSTORE2(U4,U1) NG\n");

   a.b6 = c5;
   if (a.b6==1)
      printf ("BSTORE2(U4,U2) OK\n");
   else
      printf ("BSTORE2(U4,U2) NG\n");

   a.b6 = c6;
   if (a.b6==1)
      printf ("BSTORE2(U4,U4) OK\n");
   else
      printf ("BSTORE2(U4,U4) NG\n");


   x = &a;

   x->b1 = c1;
   if (x->b1==1)
      printf ("BSTORE2(I1,I1) OK\n");
   else
      printf ("BSTORE2(I2,I1) NG\n");

   x->b1 = c2;
   if (x->b1==1)
      printf ("BSTORE2(I1,I2) OK\n");
   else
      printf ("BSTORE2(I2,I2) NG\n");

   x->b1 = c3;
   if (x->b1==1)
      printf ("BSTORE2(I1,I4) OK\n");
   else
      printf ("BSTORE2(I2,I4) NG\n");

   x->b1 = c4;
   if (x->b1==1)
      printf ("BSTORE2(I1,U1) OK\n");
   else
      printf ("BSTORE2(I2,U1) NG\n");

   x->b1 = c5;
   if (x->b1==1)
      printf ("BSTORE2(I1,U2) OK\n");
   else
      printf ("BSTORE2(I2,U2) NG\n");

   x->b1 = c6;
   if (x->b1==1)
      printf ("BSTORE2(I1,U4) OK\n");
   else
      printf ("BSTORE2(I2,U4) NG\n");


   x->b2 = c1;
   if (x->b2==1)
      printf ("BSTORE2(I2,I1) OK\n");
   else
      printf ("BSTORE2(I2,I1) NG\n");

   x->b2 = c2;
   if (x->b2==1)
      printf ("BSTORE2(I2,I2) OK\n");
   else
      printf ("BSTORE2(I2,I2) NG\n");

   x->b2 = c3;
   if (x->b2==1)
      printf ("BSTORE2(I2,I4) OK\n");
   else
      printf ("BSTORE2(I2,I4) NG\n");

   x->b2 = c4;
   if (x->b2==1)
      printf ("BSTORE2(I2,U1) OK\n");
   else
      printf ("BSTORE2(I2,U1) NG\n");

   x->b2 = c5;
   if (x->b2==1)
      printf ("BSTORE2(I2,U2) OK\n");
   else
      printf ("BSTORE2(I2,U2) NG\n");

   x->b2 = c6;
   if (x->b2==1)
      printf ("BSTORE2(I2,U4) OK\n");
   else
      printf ("BSTORE2(I2,U4) NG\n");


   x->b3 = c1;
   if (x->b3==1)
      printf ("BSTORE2(I4,I1) OK\n");
   else
      printf ("BSTORE2(I4,I1) NG\n");

   x->b3 = c2;
   if (x->b3==1)
      printf ("BSTORE2(I4,I2) OK\n");
   else
      printf ("BSTORE2(I4,I2) NG\n");

   x->b3 = c3;
   if (x->b3==1)
      printf ("BSTORE2(I4,I4) OK\n");
   else
      printf ("BSTORE2(I4,I4) NG\n");

   x->b3 = c4;
   if (x->b3==1)
      printf ("BSTORE2(I4,U1) OK\n");
   else
      printf ("BSTORE2(I4,U1) NG\n");

   x->b3 = c5;
   if (x->b3==1)
      printf ("BSTORE2(I4,U2) OK\n");
   else
      printf ("BSTORE2(I4,U2) NG\n");

   x->b3 = c6;
   if (x->b3==1)
      printf ("BSTORE2(I4,U4) OK\n");
   else
      printf ("BSTORE2(I4,U4) NG\n");


   x->b4 = c1;
   if (x->b4==1)
      printf ("BSTORE2(U1,I1) OK\n");
   else
      printf ("BSTORE2(U1,I1) NG\n");

   x->b4 = c2;
   if (x->b4==1)
      printf ("BSTORE2(U1,I2) OK\n");
   else
      printf ("BSTORE2(U1,I2) NG\n");

   x->b4 = c3;
   if (x->b4==1)
      printf ("BSTORE2(U1,I4) OK\n");
   else
      printf ("BSTORE2(U1,I4) NG\n");

   x->b4 = c4;
   if (x->b4==1)
      printf ("BSTORE2(U1,U1) OK\n");
   else
      printf ("BSTORE2(U1,U1) NG\n");

   x->b4 = c5;
   if (x->b4==1)
      printf ("BSTORE2(U1,U2) OK\n");
   else
      printf ("BSTORE2(U1,U2) NG\n");

   x->b4 = c6;
   if (x->b4==1)
      printf ("BSTORE2(U1,U4) OK\n");
   else
      printf ("BSTORE2(U1,U4) NG\n");


   x->b5 = c1;
   if (x->b5==1)
      printf ("BSTORE2(U2,I1) OK\n");
   else
      printf ("BSTORE2(U2,I1) NG\n");

   x->b5 = c2;
   if (x->b5==1)
      printf ("BSTORE2(U2,I2) OK\n");
   else
      printf ("BSTORE2(U2,I2) NG\n");

   x->b5 = c3;
   if (x->b5==1)
      printf ("BSTORE2(U2,I4) OK\n");
   else
      printf ("BSTORE2(U2,I4) NG\n");

   x->b5 = c4;
   if (x->b5==1)
      printf ("BSTORE2(U2,U1) OK\n");
   else
      printf ("BSTORE2(U2,U1) NG\n");

   x->b5 = c5;
   if (x->b5==1)
      printf ("BSTORE2(U2,U2) OK\n");
   else
      printf ("BSTORE2(U2,U2) NG\n");

   x->b5 = c6;
   if (x->b5==1)
      printf ("BSTORE2(U2,U4) OK\n");
   else
      printf ("BSTORE2(U2,U4) NG\n");


   x->b6 = c1;
   if (x->b6==1)
      printf ("BSTORE2(U4,I1) OK\n");
   else
      printf ("BSTORE2(U4,I1) NG\n");

   x->b6 = c2;
   if (x->b6==1)
      printf ("BSTORE2(U4,I2) OK\n");
   else
      printf ("BSTORE2(U4,I2) NG\n");

   x->b6 = c3;
   if (x->b6==1)
      printf ("BSTORE2(U4,I4) OK\n");
   else
      printf ("BSTORE2(U4,I4) NG\n");

   x->b6 = c4;
   if (x->b6==1)
      printf ("BSTORE2(U4,U1) OK\n");
   else
      printf ("BSTORE2(U4,U1) NG\n");

   x->b6 = c5;
   if (x->b6==1)
      printf ("BSTORE2(U4,U2) OK\n");
   else
      printf ("BSTORE2(U4,U2) NG\n");

   x->b6 = c6;
   if (x->b6==1)
      printf ("BSTORE2(U4,U4) OK\n");
   else
      printf ("BSTORE2(U4,U4) NG\n");
}
