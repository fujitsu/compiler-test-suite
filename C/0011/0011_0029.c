#include  <stdio.h>

int main()
{
   int a;

   a = -1;
   if (a< 0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = -1;
   if (a<=0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 0;
   if (a==0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 1;
   if (a> 0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 1;
   if (a>=0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 1;
   if (a!=0)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

   a = 1;
   if (0< a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 1;
   if (0<=a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = 0;
   if (0==a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = -1;
   if (0> a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = -1;
   if (0>=a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");
   a = -1;
   if (0!=a)
      printf ("***** ok *****\n");
   else
      printf ("***** ng *****\n");

       a = -1;
       if (a< 0)
          goto x1;
       else
          printf ("***** ng *****\n");
   c1:
       a = -1;
       if (a<=0)
          goto x2;
       else
          printf ("***** ng *****\n");
   c2:
       a = 0;
       if (a==0)
          goto x3;
       else
          printf ("***** ng *****\n");
   c3:
       a = 1;
       if (a> 0)
          goto x4;
       else
          printf ("***** ng *****\n");
   c4:
       a = 1;
       if (a>=0)
          goto x5;
       else
          printf ("***** ng *****\n");
   c5:
       a = 1;
       if (a!=0)
          goto x6;
       else
          printf ("***** ng *****\n");
   c6:
       a = 1;
       if (0< a)
          goto x7;
       else
          printf ("***** ng *****\n");
   c7:
       a = 1;
       if (0<=a)
          goto x8;
       else
          printf ("***** ng *****\n");
   c8:
       a = 0;
       if (0==a)
          goto x9;
       else
          printf ("***** ng *****\n");
   c9:
       a = -1;
       if (0> a)
          goto x10;
       else
          printf ("***** ng *****\n");
   c10:
       a = -1;
       if (0>=a)
          goto x11;
       else
          printf ("***** ng *****\n");
   c11:
       a = -1;
       if (0!=a)
          goto x12;
       else
          printf ("***** ng *****\n");
          goto end;

   x1:
       printf ("***** ok *****\n");
       goto c1;
   x2:
       printf ("***** ok *****\n");
       goto c2;
   x3:
       printf ("***** ok *****\n");
       goto c3;
   x4:
       printf ("***** ok *****\n");
       goto c4;
   x5:
       printf ("***** ok *****\n");
       goto c5;
   x6:
       printf ("***** ok *****\n");
       goto c6;
   x7:
       printf ("***** ok *****\n");
       goto c7;
   x8:
       printf ("***** ok *****\n");
       goto c8;
   x9:
       printf ("***** ok *****\n");
       goto c9;
   x10:
       printf ("***** ok *****\n");
       goto c10;
   x11:
       printf ("***** ok *****\n");
       goto c11;
   x12:
       printf ("***** ok *****\n");
   end:
       printf ("***** end *****\n");
}
