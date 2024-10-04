#include <stdio.h>

int main()  {

   printf("27 TEST-START \n");

{
   int a;
   switch((char)1)  {
     case (char)1:   a=1;   break;
     case (char)2:   a=2;   break;
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)100: a=100; break;
     default:  a=0;
   }

   if(a==1)
     printf("27 TEST-01 -O   K-\n");
   else
     printf("27 TEST-01 - N G -\n");
}

{
   int a;
   switch((short)2)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)20:  a=20;  break;
     case (unsigned char)100: a=100; break;
     default:  a=0;
   }

   if(a==3)
     printf("27 TEST-02 -O   K-\n");
   else
     printf("27 TEST-02 - N G -\n");
}

{
   int a;
   switch(0)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)20:  a=20;  break;
     case (short)100: a=100; break;
     default:  a=0;
   }

   if(a==0)
     printf("27 TEST-03 -O   K-\n");
   else
     printf("27 TEST-03 - N G -\n");
}

{
   int a;
   switch((unsigned char)10)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)20:  a=20;  break;
     case (unsigned short)100: a=100; break;
   }

   if(a==10)
     printf("27 TEST-04 -O   K-\n");
   else
     printf("27 TEST-04 - N G -\n");
}

{
   int a;
   switch((unsigned short)30)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 20:  a=20;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==0)
     printf("27 TEST-05 -O   K-\n");
   else
     printf("27 TEST-05 - N G -\n");
}

{
   int a;
   switch((unsigned int)1)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)20:  a=20;  break;
     case (unsigned int)100: a=100; break;
     default:  a=0;
   }

   if(a==1)
     printf("27 TEST-06 -O   K-\n");
   else
     printf("27 TEST-06 - N G -\n");
}

{
   int a;
   struct tag {
     char b:4;
   } st1;

   st1.b=1;

   switch(st1.b)  {
     case (short int)1:   a=1;   break;
     case (short int)2:
     case (short int)3:   a=3;   break;
     case (short int)5:   a=5;   break;
     case (short int)10:  a=10;  break;
     case (short int)20:  a=20;  break;
     case (short int)100: a=100; break;
     default:             a=0;
   }

   if(a==1)
     printf("27 TEST-07 -O   K-\n");
   else
     printf("27 TEST-07 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned char b:4;
   } st1;

   st1.b=5;

   switch(st1.b)  {
     case (short int)1:   a=1;   break;
     case (short int)2:
     case (short int)3:   a=3;   break;
     case (short int)5:   a=5;   break;
     case (short int)10:  a=10;  break;
     case (short int)20:  a=20;  break;
     case (short int)100: a=100; break;
   }

   if(a==5)
     printf("27 TEST-08 -O   K-\n");
   else
     printf("27 TEST-08 - N G -\n");
}

{
   int a;
   struct tag {
     short b:3;
   } st1;

   st1.b=2;

   switch(st1.b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)20:  a=20;  break;
     case (unsigned char)100: a=100; break;
   }

   if(a==3)
     printf("27 TEST-09 -O   K-\n");
   else
     printf("27 TEST-09 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned short b:2;
   } st1;

   st1.b=4;

   switch(st1.b)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)20:  a=20;  break;
     case (unsigned short)100: a=100; break;
     default:                  a=0;
   }

   if(a==0)
     printf("27 TEST-10 -O   K-\n");
   else
     printf("27 TEST-10 - N G -\n");
}

{
   int a;
   struct tag {
     int b:6;
   } st1;

   st1.b=20;

   switch(st1.b)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)20:  a=20;  break;
     case (unsigned int)100: a=100; break;
     default:                  a=0;
   }

   if(a==20)
     printf("27 TEST-11 -O   K-\n");
   else
     printf("27 TEST-11 - N G -\n");
}

{
   int a;
   struct tag {
     unsigned int b:4;
   } st1;

   st1.b=2;

   switch(st1.b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)20:  a=20;  break;
     case (unsigned char)100: a=100; break;
   }

   if(a==3)
     printf("27 TEST-12 -O   K-\n");
   else
     printf("27 TEST-12 - N G -\n");
}

{
   int a;
   char b;

   b=5;

   switch(b)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 20:  a=20;  break;
     case 100: a=100; break;
   }

   if(a==5)
     printf("27 TEST-13 -O   K-\n");
   else
     printf("27 TEST-13 - N G -\n");
}

{
   int a;
   short b;

   b=30;

   switch(b)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 20:  a=20;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==0)
     printf("27 TEST-14 -O   K-\n");
   else
     printf("27 TEST-14 - N G -\n");
}

{
   int a;
   unsigned char b;

   b=1;

   switch(b)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)20:  a=20;  break;
     case (char)100: a=100; break;
     default:  a=0;
   }

   if(a==1)
     printf("27 TEST-15 -O   K-\n");
   else
     printf("27 TEST-15 - N G -\n");
}

{
   int a;
   unsigned short b;

   b=20;

   switch(b)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)20:  a=20;  break;
     case (short)100: a=100; break;
     default:  a=0;
   }

   if(a==20)
     printf("27 TEST-16 -O   K-\n");
   else
     printf("27 TEST-16 - N G -\n");
}

{
   int a;
   int b;

   b=100;

   switch(b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)20:  a=20;  break;
     case (unsigned char)100: a=100; break;
     default:  a=0;
   }

   if(a==100)
     printf("27 TEST-17 -O   K-\n");
   else
     printf("27 TEST-17 - N G -\n");
}

{
   int a;
   unsigned int b;

   b=0;

   switch(b)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)20:  a=20;  break;
     case (unsigned short)100: a=100; break;
     default:                  a=0;
   }

   if(a==0)
     printf("27 TEST-18 -O   K-\n");
   else
     printf("27 TEST-18 - N G -\n");
}

{
   int a;
   struct tag {
      char b:2;
   } st1,*st2=&st1;

   st2->b=3;

   switch(st2->b)  {
     case (unsigned char)1:   a=1;   break;
     case (unsigned char)2:
     case (unsigned char)3:   a=3;   break;
     case (unsigned char)5:   a=5;   break;
     case (unsigned char)10:  a=10;  break;
     case (unsigned char)20:  a=20;  break;
     case (unsigned char)100: a=100; break;
     default:                 a=0;
   }

#if defined(gmicro) || defined(__GNUC__)
   if(a==0)
     printf("27 TEST-19 -O   K-\n");
   else
     printf("27 TEST-19 - N G -\n");
#else
   if(a==3)
     printf("27 TEST-19 -O   K-\n");
   else
     printf("27 TEST-19 - N G -\n");
#endif
}

{
   int a;
   struct tag {
      short b;
   } st1,*st2=&st1;

   st2->b=10;

   switch(st2->b)  {
     case (char)1:   a=1;   break;
     case (char)2:
     case (char)3:   a=3;   break;
     case (char)5:   a=5;   break;
     case (char)10:  a=10;  break;
     case (char)20:  a=20;  break;
     case (char)100: a=100; break;
     default:                 a=0;
   }

   if(a==10)
     printf("27 TEST-20 -O   K-\n");
   else
     printf("27 TEST-20 - N G -\n");
}

{
   int a;
   struct tag {
      int b:4;
   } st1,*st2=&st1;

   st2->b=200;

   switch(st2->b)  {
     case (unsigned short)1:   a=1;   break;
     case (unsigned short)2:
     case (unsigned short)3:   a=3;   break;
     case (unsigned short)5:   a=5;   break;
     case (unsigned short)10:  a=10;  break;
     case (unsigned short)20:  a=20;  break;
     case (unsigned short)100: a=100; break;
     default:                  a=0;
   }

   if(a==0)
     printf("27 TEST-21 -O   K-\n");
   else
     printf("27 TEST-21 - N G -\n");
}

{
   int a;
   struct tag {
      unsigned char b;
   } st1,*st2=&st1;

   st2->b=1;

   switch(st2->b)  {
     case (short)1:   a=1;   break;
     case (short)2:
     case (short)3:   a=3;   break;
     case (short)5:   a=5;   break;
     case (short)10:  a=10;  break;
     case (short)20:  a=20;  break;
     case (short)100: a=100; break;
     default:         a=0;
   }

   if(a==1)
     printf("27 TEST-22 -O   K-\n");
   else
     printf("27 TEST-22 - N G -\n");
}

{
   int a;
   struct tag {
      unsigned short b:6;
   } st1,*st2=&st1;

   st2->b=20;

   switch(st2->b)  {
     case (unsigned int)1:   a=1;   break;
     case (unsigned int)2:
     case (unsigned int)3:   a=3;   break;
     case (unsigned int)5:   a=5;   break;
     case (unsigned int)10:  a=10;  break;
     case (unsigned int)20:  a=20;  break;
     case (unsigned int)100: a=100; break;
     default:         a=0;
   }

   if(a==20)
     printf("27 TEST-23 -O   K-\n");
   else
     printf("27 TEST-23 - N G - a=%d\n",a);
}

{
   int a;
   struct tag {
      unsigned int b;
   } st1,*st2=&st1;

   st2->b=100;

   switch(st2->b)  {
     case 1:   a=1;   break;
     case 2:
     case 3:   a=3;   break;
     case 5:   a=5;   break;
     case 10:  a=10;  break;
     case 20:  a=20;  break;
     case 100: a=100; break;
     default:  a=0;
   }

   if(a==100)
     printf("27 TEST-24 -O   K-\n");
   else
     printf("27 TEST-24 - N G -\n");
}
   printf("27 TEST-END\n");
}
