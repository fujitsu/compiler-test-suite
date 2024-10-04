#include<stdio.h>
 

int main()  {

   struct tag  {
             char  c1;
             char  c2;
             char  c3;
             char  c4;
            short  s1;
            short  s2;
            short  s3;
            short  s4;
              int  i1;
              int  i2;
              int  i3;
              int  i4;
     unsigned int  ui1;
     unsigned int  ui2;
     unsigned int  ui3;
     unsigned int  ui4;
   } st1,*st2=&st1;

   int a1,a2,a3,a4;
   int b1,b2,b3,b4;
   int x1,x2,x3,x4;
   int y1,y2,y3,y4;

   st2->c1=1,st2->c2=2,st2->c3=3,st2->c4=4;
   st2->s1=1,st2->s2=2,st2->s3=3,st2->s4=4;

   st2->i1=1,st2->i2=2,st2->i3=10,st2->i4=20;
   st2->ui1=1,st2->ui2=2,st2->ui3=5,st2->ui4=10;

  printf("17 TEST-START \n");

   switch(st2->c1)  {
     case (char)5:
       a1=5;
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
  if(a1==10)
    printf("17 1-1 TEST -O  K- \n");
  else
    printf("17 1-1 TEST - NG - \n");

   switch(st2->c2)  {
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
  if(a2==0)
    printf("17 1-2 TEST -O  K- \n");
  else
    printf("17 1-2 TEST - NG - \n");

   switch(st2->c3)  {
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
  if(a3==3)
    printf("17 1-3 TEST -O  K- \n");
  else
    printf("17 1-3 TEST - NG - \n");

   switch(st2->c4)  {
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
    printf("17 1-4 TEST -O  K- \n");
  else
    printf("17 1-4 TEST - NG - \n");

   switch(st2->s1)  {
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
  if(b1==10)
    printf("17 2-1 TEST -O  K- \n");
  else
    printf("17 2-1 TEST - NG - \n");

   switch(st2->s2)  {
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
  if(b2==0)
    printf("17 2-2 TEST -O  K- \n");
  else
    printf("17 2-2 TEST - NG - \n");

   switch(st2->s3)  {
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
  if(b3==3)
    printf("17 2-3 TEST -O  K- \n");
  else
    printf("17 2-3 TEST - NG - \n");

   switch(st2->s4)  {
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
    printf("17 2-4 TEST -O  K- \n");
  else
    printf("17 2-4 TEST - NG - \n");

   switch(st2->i1)  {
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
  if(x1==10)
    printf("17 3-1 TEST -O  K- \n");
  else
    printf("17 3-1 TEST - NG - \n");

   switch(st2->i2)  {
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
    printf("17 3-2 TEST -O  K- \n");
  else
    printf("17 3-2 TEST - NG - \n");

   switch(st2->i3)  {
     case 3:
       x3=3;
       break;
     case 1:
     case 10:
       x3=10;
       break;
     case 20:
       x3=20;
     default:
       x3=0;
  }
  if(b3==3)
    printf("17 3-3 TEST -O  K- \n");
  else
    printf("17 3-3 TEST - NG - \n");

   switch(st2->i4)  {
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
    printf("17 3-4 TEST -O  K- \n");
  else
    printf("17 3-4 TEST - NG - \n");

   switch(st2->ui1)  {
     case (char)5:
       y1=5;
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
  if(y1==10)
    printf("17 4-1 TEST -O  K- \n");
  else
    printf("17 4-1 TEST - NG - \n");

   switch(st2->ui2)  {
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
    printf("17 4-2 TEST -O  K- \n");
  else
    printf("17 4-2 TEST - NG - \n");

   switch(st2->ui3)  {
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
  if(y3==5)
    printf("17 4-3 TEST -O  K- \n");
  else
    printf("17 4-3 TEST - NG - \n");

   switch(st2->ui4)  {
     case (unsigned int)5:
       y4=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       y4=10;
       break;
     case (unsigned int)20:
       y4=20;
     default:
       y4=0;
  }
  if(y4==10)
    printf("17 4-4 TEST -O  K- \n");
  else
    printf("17 4-4 TEST - NG - \n");

  printf("17 TEST-END \n");

}
