#include <stdio.h>

int main()  {

   int i=0;

   printf("28 TEST-START \n");

{
   int a;
   struct tag {
     char b;
   } st1,*st2=&st1;

   st2->b = 2;

   switch((st2+i)->b)  {
     case (short)1:   a=1;   break;
     case (short)2:   a=2;   break;
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)100: a=100; break;
     default:  a=0;
   }

   if(a==2)
     printf("28 TEST-01 -O   K-\n");
   else
     printf("28 TEST-01 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned char b;
   } st1,*st2=&st1;

   st2->b = 1;

   switch((st2+i)->b)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==1)
     printf("28 TEST-02 -O   K-\n");
   else
     printf("28 TEST-02 - N G -\n");
}

{
   int a;
   struct tag {
     short b;
   } st1,*st2=&st1;

   st2->b = 5;

   switch((st2+i)->b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)100: a=100; break;
     default:  a=0;
   }

   if(a==5)
     printf("28 TEST-03 -O   K-\n");
   else
     printf("28 TEST-03 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned short b:4;
   } st1,*st2=&st1;

   st2->b = 1;

   switch((st2+i)->b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)100: a=100; break;
   }

   if(a==1)
     printf("28 TEST-04 -O   K-\n");
   else
     printf("28 TEST-04 - N G -\n");
}

{
   int a;
   struct tag {
     int b:4;
   } st1,*st2=&st1;

   st2->b =  5;

   switch((st2+i)->b)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)100: a=100; break;
   }

   if(a==5)
     printf("28 TEST-05 -O   K-\n");
   else
     printf("28 TEST-05 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned int b:6;
   } st1,*st2=&st1;

   st2->b = 2;

   switch((st2+i)->b)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)100: a=100; break;
   }

   if(a==3)
     printf("28 TEST-06 -O   K-\n");
   else
     printf("28 TEST-06 - N G -\n");
}

{
   int a;
   struct tag {
     char b;
   } st[2];

   st[1].b = 5;

   switch(st[1].b)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)100: a=100; break;
   }

   if(a==5)
     printf("28 TEST-07 -O   K-\n");
   else
     printf("28 TEST-07 - N G -\n");
}

{
   int a;
   struct tag {
     short b:3;
   } st[2];

   st[1].b = 1;

   switch(st[1].b)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)100: a=100; break;
   }

   if(a==1)
     printf("28 TEST-08 -O   K-\n");
   else
     printf("28 TEST-08 - N G -\n");
}

{
   int a;
   struct tag {
     int b:4;
   } st[2];

   st[1].b = 1;

   switch(st[1].b)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)100: a=100; break;
   }

   if(a==1)
     printf("28 TEST-09 -O   K-\n");
   else
     printf("28 TEST-09 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned char b;
   } st[2];

   st[1].b = 4;

   switch(st[1].b)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)100: a=100; break;
     default:         a=0;
   }

   if(a==0)
     printf("28 TEST-10 -O   K-\n");
   else
     printf("28 TEST-10 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned short b;
   } st[2];

   st[1].b = 100;

   switch(st[1].b)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 100: a=100; break;
     default:         a=0;
   }

   if(a==100)
     printf("28 TEST-11 -O   K-\n");
   else
     printf("28 TEST-11 - N G -\n");
}

{
   int a;
   struct tag {
     char c1:3;
     char c2:3;
   } st1;

   st1.c1 = 1;
   st1.c2 = 2;

   switch(st1.c1+st1.c2)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)100: a=100; break;
     default:                 a=0;
   }

   if(a==3)
     printf("28 TEST-13 -O   K-\n");
   else
     printf("28 TEST-13 - N G -\n");
}

{
   int a;
   struct tag {
     short s1:4;
     short s2:3;
   } st1;

   st1.s1 = 2;
   st1.s2 = 3;

   switch(st1.s1+st1.s2)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)100: a=100; break;
   }

   if(a==5)
     printf("28 TEST-14 -O   K-\n");
   else
     printf("28 TEST-14 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned char uc1:2;
     unsigned char uc2:4;
   } st1;

   st1.uc1 = 1;
   st1.uc2 = 3;

   switch(st1.uc1+st1.uc2)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)100: a=100; break;
     default:        a=0;
   }

   if(a==0)
     printf("28 TEST-15 -O   K-\n");
   else
     printf("28 TEST-15 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned short us1;
     unsigned short us2;
   } st1;

   st1.us1 = 5;
   st1.us2 = 5;

   switch(st1.us1+st1.us2)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)100: a=100; break;
     default:         a=0;
   }

   if(a==10)
     printf("28 TEST-16 -O   K-\n");
   else
     printf("28 TEST-16 - N G -\n");
}

{
   int a;
   struct tag {
     int i1;
     int i2;
   } st1;

   st1.i1 = 10;
   st1.i2 = 10;

   switch(st1.i1+st1.i2)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)100: a=100; break;
     default:                a=0;
   }

   if(a==0)
     printf("28 TEST-17 -O   K-\n");
   else
     printf("28 TEST-17 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned int ui1;
     unsigned int ui2;
   } st1;

   st1.ui1 = 0;
   st1.ui2 = 1;

   switch(st1.ui1+st1.ui2)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==1)
     printf("28 TEST-18 -O   K-\n");
   else
     printf("28 TEST-18 - N G -\n");
}

{
   int a;
   char c1;
   char c2;

   c1 = 1;
   c2 = 1;

   switch(c1+c2)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==3)
     printf("28 TEST-19 -O   K-\n");
   else
     printf("28 TEST-19 - N G -\n");
}

{
   int a;
   short s1;
   short s2;

   s1 = 3;
   s2 = 7;

   switch(s1+s2)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)100: a=100; break;
     default:         a=0;
   }

   if(a==10)
     printf("28 TEST-20 -O   K-\n");
   else
     printf("28 TEST-20 - N G -\n");
}

{
   int a;
   int i1;
   int i2;

   i1 = 2;
   i2 = 2;

   switch(i1+i2)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)100: a=100; break;
     default:        a=0;
   }

   if(a==0)
     printf("28 TEST-21 -O   K-\n");
   else
     printf("28 TEST-21 - N G -\n");
}

{
   int a;
   unsigned char uc1;
   unsigned char uc2;

   uc1 = 20;
   uc2 = 80;

   switch(uc1+uc2)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)100: a=100; break;
     default:        a=0;
   }

   if(a==100)
     printf("28 TEST-22 -O   K-\n");
   else
     printf("28 TEST-22 - N G -\n");
}

{
   int a;
   unsigned short us1;
   unsigned short us2;

   us1 = 0;
   us2 = 1;

   switch(us1+us2)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)100: a=100; break;
     default:                  a=0;
   }

   if(a==1)
     printf("28 TEST-23 -O   K-\n");
   else
     printf("28 TEST-23 - N G -\n");
}

{
   int a;
   unsigned int ui1;
   unsigned int ui2;

   ui1 = 0;
   ui2 = 0;

   switch(ui1+ui2)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)100: a=100; break;
     default:                 a=0;
   }

   if(a==0)
     printf("28 TEST-24 -O   K-\n");
   else
     printf("28 TEST-24 - N G -\n");
}
   printf("28 TEST-END\n");
}
