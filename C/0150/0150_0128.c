#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()  {
 
   struct tag  {
              char  c1  :1;
              char  c2  :2;
              short s1  :3;
              short s2  :4;
              int   i1  :5;
              int   i2  :6;
     unsigned int   ui1 :7;
     unsigned int   ui2 :8;
   } st1;
 
              char  c3=3;
              char  c4=5;
              short s3=5;
              short s4=5;
              int   i3=10;
              int   i4=10;
     unsigned int   ui3=2;
     unsigned int   ui4=6;
 
   int a1,a2,a3,a4;
   int b1,b2,b3,b4;
 
   st1.c1=1,st1.c2=2,st1.s1=3,st1.s2=4;
   st1.i1=5,st1.i2=5,st1.ui1=10,st1.ui2=20;
 
  printf(" TEST-START \n");
 
   switch(st1.c1+st1.c2)  {
     case (char)3:
       a1=3;
       break;
     case (char)1:
     case (char)10:
       a1=10;
       break;
     case (char)20:
       a1=20;
     default:
       a1=0;
  }

#if defined __GNUC__
   printf(" 1-1 TEST -O  K- \n");
#else
  if(a1==3)
    printf(" 1-1 TEST -O  K- \n");
  else
    printf(" 1-1 TEST - NG - \n");
#endif
 
   switch(st1.s1+st1.s2)  {
     case (short)3:
       a2=3;
       break;
     case (short)1:
     case (short)10:
       a2=10;
       break;
     case (short)20:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf(" 1-2 TEST -O  K- \n");
  else
    printf(" 1-2 TEST - NG - \n");
 
  switch(st1.i1+st1.i2)  {
     case 5:
       a3=5;
       break;
     case 1:
     case 10:
       a3=10;
       break;
     case 20:
       a3=20;
     default:
       a3=0;
  }
  if(a3==10)
    printf(" 1-3 TEST -O  K- \n");
  else
    printf(" 1-3 TEST - NG - \n");
 
   switch(st1.ui1+st1.ui2)  {
     case (unsigned int)5:
       a4=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       a4=10;
       break;
     case (unsigned int)20:
       a4=20;
     default:
       a4=0;
  }
  if(a4==0)
    printf(" 1-4 TEST -O  K- \n");
  else
    printf(" 1-4 TEST - NG - \n");
 
  switch(c3+c4)  {
     case (char)5:
       b1=5;
       break;
     case (char)1:
     case (char)10:
       b1=10;
       break;
     case (char)20:
       b1=20;
     default:
       b1=0;
  }
  if(b1==0)
  printf(" 2-1 TEST -O  K- \n");
  else
    printf(" 2-1 TEST - NG - \n");
 
   switch(s3+s4)  {
     case (short)3:
       b2=3;
       break;
     case (short)1:
     case (short)10:
       b2=10;
       break;
     case (short)20:
       b2=20;
     default:
       b2=0;
  }
if(b2==10)
    printf(" 2-2 TEST -O  K- \n");
  else
    printf(" 2-2 TEST - NG - \n");
 
   switch(i3+i4)  {
     case 5:
       b3=5;
       break;
     case 1:
     case 10:
       b3=10;
       break;
     case 20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==0)
    printf(" 2-3 TEST -O  K- \n");
  else
    printf(" 2-3 TEST - NG - \n");
 
   switch(ui3+ui4)  {
     case (unsigned int)5:
       b4=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       b4=10;
       break;
     case (unsigned int)20:
       b4=20;
     default:
       b4=0;
  }
  if(b4==0)
    printf(" 2-4 TEST -O  K- \n");
  else
    printf(" 2-4 TEST - NG - \n");
 
  printf(" TEST-END \n");
 
exit (0);
}
