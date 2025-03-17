#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()  {
 
   struct tag  {
             char  c1:1;
             char  c2:2;
             char  c3:3;
             char  c4:4;
            short  s1:5;
            short  s2:6;
            short  s3:7;
            short  s4:8;
              int  i1:9;
              int  i2:10;
              int  i3:11;
              int  i4:12;
     unsigned int  ui1:13;
     unsigned int  ui2:14;
     unsigned int  ui3:15;
     unsigned int  ui4:16;
   } st;
 
   int a1,a2,a3,a4;
   int b1,b2,b3,b4;
   int x1,x2,x3,x4;
   int y1,y2,y3,y4;
 
   st.c1=1,st.c2=2,st.c3=3,st.c4=4;
   st.s1=1,st.s2=2,st.s3=3,st.s4=4;
 
   st.i1=1,st.i2=2,st.i3=10,st.i4=20;
   st.ui1=1,st.ui2=2,st.ui3=5,st.ui4=10;
 
  printf(" TEST-START \n");
 
   switch(st.c1+st.c2)  {
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
 
   switch(st.c2+st.c3)  {
     case (short)5:
       a2=5;
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
 
#if defined __GNUC__
   printf(" 1-2 TEST -O  K- \n");
#else
  if(a2==5)
    printf(" 1-2 TEST -O  K- \n");
  else
    printf(" 1-2 TEST - NG - \n");
#endif 

   switch(st.c3+st.c4)  {
     case 3:
       a3=3;
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
  if(a3==0)
    printf(" 1-3 TEST -O  K- \n");
  else
    printf(" 1-3 TEST - NG - \n");
 
   switch(st.c4+st.c1)  {
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
 
#if defined __GNUC__
   printf(" 1-4 TEST -O  K- \n");
#else
  if(a4==5)
    printf(" 1-4 TEST -O  K- \n");
  else
    printf(" 1-4 TEST - NG - \n");
#endif
 
   switch(st.s1+st.s2)  {
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
 
   switch(st.s2+st.s3)  {
     case (short)5:
       b2=5;
       break;
     case (short)1:
     case (short)10:
       b2=10;
       break;
     case (short)2:
       b2=2;
     default:
       b2=0;
  }
  if(b2==5)
    printf(" 2-2 TEST -O  K- \n");
  else
    printf(" 2-2 TEST - NG - \n");
 
   switch(st.s3+st.s4)  {
     case 3:
       b3=3;
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
 
   switch(st.s4+st.s1)  {
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
  if(b4==5)
    printf(" 2-4 TEST -O  K- \n");
  else
    printf(" 2-4 TEST - NG - \n");
 
   switch(st.i1+st.i2)  {
     case (char)5:
       x1=5;
       break;
     case (char)1:
     case (char)10:
       x1=10;
       break;
     case (char)20:
       x1=20;
     default:
       x1=0;
  }
  if(x1==0)
    printf(" 3-1 TEST -O  K- \n");
  else
    printf(" 3-1 TEST - NG - \n");
 
   switch(st.i2+st.i3)  {
     case (short)5:
       x2=5;
       break;
     case (short)1:
     case (short)10:
       x2=10;
       break;
     case (short)2:
       x2=2;
     default:
       x2=0;
  }
  if(x2==0)
    printf(" 3-2 TEST -O  K- \n");
  else
    printf(" 3-2 TEST - NG - \n");
 
   switch(st.i3+st.i4)  {
     case 3:
       x3=3;
       break;
     case 1:
     case 10:
       x3=10;
       break;
     case 30:
       x3=30;
     default:
       x3=0;
  }
  if(x3==0)
    printf(" 3-3 TEST -O  K- \n");
  else
    printf(" 3-3 TEST - NG - \n");
 
   switch(st.i4+st.i1)  {
     case (unsigned int)5:
       x4=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       x4=10;
       break;
     case (unsigned int)20:
       x4=20;
     default:
       x4=0;
  }
  if(x4==0)
    printf(" 3-4 TEST -O  K- \n");
  else
    printf(" 3-4 TEST - NG - \n");
 
   switch(st.ui1+st.ui2)  {
     case (char)3:
       y1=3;
       break;
     case (char)1:
     case (char)10:
       y1=10;
       break;
     case (char)20:
       y1=20;
     default:
       y1=0;
  }
  if(y1==3)
    printf(" 4-1 TEST -O  K- \n");
  else
    printf(" 4-1 TEST - NG - \n");
 
   switch(st.ui2+st.ui3)  {
     case (short)5:
       y2=5;
       break;
     case (short)1:
     case (short)10:
       y2=10;
       break;
     case (short)2:
       y2=2;
     default:
       y2=0;
  }
  if(y2==0)
    printf(" 4-2 TEST -O  K- \n");
  else
    printf(" 4-2 TEST - NG - \n");
 
   switch(st.ui3+st.ui4)  {
     case 5:
       y3=5;
       break;
     case 1:
     case 10:
       y3=10;
       break;
     case 20:
       y3=20;
     default:
       y3=0;
  }
  if(y3==0)
    printf(" 4-3 TEST -O  K- \n");
  else
    printf(" 4-3 TEST - NG - \n");
 
   switch(st.ui4+st.ui1)  {
     case (unsigned int)5:
       y4=5;
       break;
     case (unsigned int)1:
     case (unsigned int)11:
       y4=10;
       break;
     case (unsigned int)20:
       y4=20;
     default:
       y4=0;
  }
  if(y4==10)
    printf(" 4-4 TEST -O  K- \n");
  else
    printf(" 4-4 TEST - NG - \n");
 
  printf(" TEST-END \n");
 
exit (0);
}
