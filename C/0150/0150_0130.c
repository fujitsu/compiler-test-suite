#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()  {
                char  c1=1;
                char  c2=2;
                char  c3=3;
                char  c4=4;
               short  s1=2;
               short  s2=3;
               short  s3=4;
               short  s4=5;
                 int  i1=4;
                 int  i2=3;
                 int  i3=2;
                 int  i4=1;
       unsigned  int  ui1=3;
       unsigned  int  ui2=6;
       unsigned  int  ui3=4;
       unsigned  int  ui4=5;
 
   int a1,a2,a3,a4;
   int b1,b2,b3,b4;
   int x1,x2,x3,x4;
   int y1,y2,y3,y4;
 
  printf(" TEST-START \n");
 
   switch(c1+c2)  {
     case (char)1:
       a1=10;
       break;
     case (char)2:
       a1=20;
       break;
     case (char)3:
       a1=30;
       break;
     case (char)5:
       a1=50;
       break;
     case (char)10:
       a1=100;
       break;
     default:
       a1=0;
  }
 
  if(a1==30)
    printf(" 1-1 TEST -O  K- \n");
  else
    printf(" 1-1 TEST - NG - \n");
 
  switch(c2+c3)  {
     case (short)1:
       a2=10;
       break;
     case (short)2:
       a2=20;
       break;
     case (short)3:
       a2=30;
       break;
     case (short)5:
       a2=50;
       break;
     case (short)10:
       a2=100;
       break;
     default:
       a2=0;
  }
 
  if(a2==50)
    printf(" 1-2 TEST -O  K- \n");
  else
    printf(" 1-2 TEST - NG - \n");
 
  switch(c3+c4)  {
     case 1:
       a3=10;
       break;
     case 2:
       a3=20;
       break;
     case 3:
       a3=30;
       break;
     case 5:
       a3=50;
       break;
     case 10:
       a3=100;
       break;
     default:
       a3=0;
  }
 
  if(a3==0)
    printf(" 1-3 TEST -O  K- \n");
  else
    printf(" 1-3 TEST - NG - \n");
 
  switch(c4+c1)  {
     case (unsigned int)1:
       a4=10;
       break;
     case (unsigned int)2:
       a4=20;
       break;
     case (unsigned int)3:
       a4=30;
       break;
     case (unsigned int)5:
       a4=50;
       break;
     case (unsigned int)10:
       a4=100;
       break;
     default:
       a4=0;
  }
 
  if(a4==50)
    printf(" 1-4 TEST -O  K- \n");
  else
    printf(" 1-4 TEST - NG - \n");
 
  switch(s1+s2)  {
     case (char)1:
       b1=10;
       break;
     case (char)2:
       b1=20;
       break;
     case (char)3:
       b1=30;
       break;
     case (char)5:
       b1=50;
       break;
     case (char)10:
       b1=100;
       break;
     default:
       b1=0;
  }
 
  if(b1==50)
    printf(" 2-1 TEST -O  K- \n");
  else
    printf(" 2-1 TEST - NG - \n");
 
  switch(s2+s3)  {
     case (short)1:
       b2=10;
       break;
     case (short)2:
       b2=20;
       break;
     case (short)3:
       b2=30;
       break;
     case (short)5:
       b2=50;
       break;
     case (short)10:
       b2=100;
       break;
     default:
       b2=0;
  }
 
  if(b2==0)
    printf(" 2-2 TEST -O  K- \n");
  else
    printf(" 2-2 TEST - NG - \n");
 
  switch(s3+s4)  {
     case 1:
       b3=10;
       break;
     case 2:
       b3=20;
       break;
     case 3:
       b3=30;
       break;
     case 5:
       b3=50;
       break;
     case 10:
       b3=100;
       break;
     default:
       b3=0;
  }
 
  if(b3==0)
    printf(" 2-3 TEST -O  K- \n");
  else
    printf(" 2-3 TEST - NG - \n");
 
  switch(s4+s1)  {
     case (unsigned int)1:
       b4=10;
       break;
     case (unsigned int)2:
       b4=20;
       break;
     case (unsigned int)3:
       b4=30;
       break;
     case (unsigned int)7:
       b4=70;
       break;
     case (unsigned int)10:
       b4=100;
       break;
     default:
       b4=0;
  }
 
  if(b4==70)
    printf(" 2-4 TEST -O  K- \n");
  else
    printf(" 2-4 TEST - NG - \n");
 
  switch(i1+i2) {
     case (char)1:
       x1=10;
       break;
     case (char)2:
       x1=20;
       break;
     case (char)3:
       x1=30;
       break;
     case (char)5:
       x1=50;
       break;
     case (char)10:
       x1=100;
       break;
     default:
       x1=0;
  }
 
  if(x1==0)
    printf(" 3-1 TEST -O  K- \n");
  else
    printf(" 3-1 TEST - NG - \n");
 
  switch(i2+i3)  {
     case (short)1:
       x2=10;
       break;
     case (short)2:
       x2=20;
       break;
     case (short)3:
       x2=30;
       break;
     case (short)5:
       x2=50;
       break;
     case (short)10:
       x2=100;
       break;
     default:
       x2=0;
  }
 
  if(x2==50)
    printf(" 3-2 TEST -O  K- \n");
  else
    printf(" 3-2 TEST - NG - \n");
 
  switch(i3+i4)  {
     case 1:
       x3=10;
       break;
     case 2:
       x3=20;
       break;
     case 3:
       x3=30;
       break;
     case 5:
       x3=50;
       break;
     case 10:
       x3=100;
       break;
     default:
       x3=0;
  }
 
  if(x3==30)
    printf(" 3-3 TEST -O  K- \n");
  else
    printf(" 3-3 TEST - NG - \n");
 
  switch(i4+i1)  {
     case (unsigned int)1:
       x4=10;
       break;
     case (unsigned int)2:
       x4=20;
       break;
     case (unsigned int)3:
       x4=30;
       break;
     case (unsigned int)5:
       x4=50;
       break;
     case (unsigned int)10:
       x4=100;
       break;
     default:
       x4=0;
  }
 
  if(x4==50)
    printf(" 3-4 TEST -O  K- \n");
  else
    printf(" 3-4 TEST - NG - \n");
 
  switch(ui1+ui2)  {
     case (char)1:
       y1=10;
       break;
     case (char)2:
       y1=20;
       break;
     case (char)3:
       y1=30;
       break;
     case (char)5:
       y1=50;
       break;
     case (char)10:
       y1=100;
       break;
     default:
       y1=0;
  }
 
  if(y1==0)
    printf(" 4-1 TEST -O  K- \n");
  else
    printf(" 4-1 TEST - NG - \n");
 
  switch(ui2+ui3)  {
     case (short)1:
       y2=10;
       break;
     case (short)2:
       y2=20;
       break;
     case (short)3:
       y2=30;
       break;
     case (short)5:
       y2=50;
       break;
     case (short)10:
       y2=100;
       break;
     default:
       y2=0;
  }
 
  if(y2==100)
    printf(" 4-2 TEST -O  K- \n");
  else
    printf(" 4-2 TEST - NG - \n");
 
  switch(ui3+ui4)  {
     case 1:
       y3=10;
       break;
     case 2:
       y3=20;
       break;
     case 3:
       y3=30;
       break;
     case 5:
       y3=50;
       break;
     case 10:
       y3=100;
       break;
     default:
       y3=0;
  }
 
  if(y3==0)
    printf(" 4-3 TEST -O  K- \n");
  else
    printf(" 4-3 TEST - NG - \n");
 
  switch(ui4+ui1)  {
     case (unsigned int)1:
       y4=10;
       break;
     case (unsigned int)2:
       y4=20;
       break;
     case (unsigned int)3:
       y4=30;
       break;
     case (unsigned int)8:
       y4=80;
       break;
     case (unsigned int)10:
       y4=100;
       break;
     default:
       y4=0;
  }
 
  if(y4==80)
    printf(" 4-4 TEST -O  K- \n");
  else
    printf(" 4-4 TEST - NG - \n");
 
  printf(" TEST-END \n");
 
exit (0);
}
