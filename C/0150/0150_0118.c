#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int main()  {
 
            long int  l1=1;
            long int  l2=3;
            long int  l3=5;
            long int  l4=10;
            long int  l5=100;
            long int  l6=10000;
            long int  l7=-2147483648;
            long int  l8=2147483647;
   unsigned long int  ul1=1;
   unsigned long int  ul2=2;
   unsigned long int  ul3=3;
   unsigned long int  ul4=5;
   unsigned long int  ul5=10;
   unsigned long int  ul6=100;
   unsigned long int  ul7=10000;
   unsigned long int  ul8=4294967295;
 
   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;
 
  printf(" TEST-START \n");
 
   switch(l1)  {
     case (char)1:
       a1=1;
       break;
     case (char)10:
     case (char)100:
       a1=10;
       break;
     case (char)127:
       a1=20;
     default:
       a1=0;
  }
  if(a1==1)
    printf(" 1-1 TEST -O  K- \n");
  else
    printf(" 1-1 TEST - NG - \n");
 
   switch(l2)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       a2=10;
       break;
     case (unsigned char)128:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf(" 1-2 TEST -O  K- \n");
  else
    printf(" 1-2 TEST - NG - \n");
 
   switch(l3)  {
     case (short)10:
       a3=5;
       break;
     case (short)5:
     case (short)100:
       a3=10;
       break;
     case (short)128:
       a3=20;
     default:
       a3=0;
  }
  if(a3==10)
    printf(" 1-3 TEST -O  K- \n");
  else
    printf(" 1-3 TEST - NG - \n");
 
   switch(l4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       a4=10;
       break;
     case (unsigned short)128:
       a4=20;
     default:
       a4=0;
  }
  if(a4==10)
    printf(" 1-4 TEST -O  K- \n");
  else
    printf(" 1-4 TEST - NG - \n");
 
   switch(l5)  {
     case 5:
       a5=5;
       break;
     case 10:
     case 100:
       a5=10;
       break;
     case 128:
       a5=20;
     default:
       a5=0;
  }
  if(a5==10)
    printf(" 1-5 TEST -O  K- \n");
  else
    printf(" 1-5 TEST - NG - \n");
 
   switch(l6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)10:
     case (unsigned int)100:
       a6=10;
       break;
     case (unsigned int)10000:
       a6=20;
     default:
       a6=0;
  }
  if(a6==0)
    printf(" 1-6 TEST -O  K- \n");
  else
    printf(" 1-6 TEST - NG - \n");
 
   switch(l7)  {
     case (long int)-2147483648:
       a7=1;
       break;
     case (long int)10:
     case (long int)100:
       a7=10;
       break;
     case (long int)32767:
       a7=20;
     default:
       a7=0;
  }
  if(a7==1)
    printf(" 1-7 TEST -O  K- \n");
  else
    printf(" 1-7 TEST - NG - \n");
 
   switch(l8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       a8=10;
       break;
     case (unsigned long int)128:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf(" 1-8 TEST -O  K- \n");
  else
    printf(" 1-8 TEST - NG - \n");
 
   switch(ul1)  {
     case (char)1:
       b1=1;
       break;
     case (char)10:
     case (char)100:
       b1=10;
       break;
     case (char)128:
       b1=20;
     default:
       b1=0;
  }
  if(b1==1)
    printf(" 2-1 TEST -O  K- \n");
  else
    printf(" 2-1 TEST - NG - \n");
 
   switch(ul2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       b2=10;
       break;
     case (unsigned char)128:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf(" 2-2 TEST -O  K- \n");
  else
    printf(" 2-2 TEST - NG - \n");
 
   switch(ul3)  {
     case (short)5:
       b3=5;
       break;
     case (short)3:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==10)
    printf(" 2-3 TEST -O  K- \n");
  else
    printf(" 2-3 TEST - NG - \n");
 
   switch(ul4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       b4=10;
       break;
     case (unsigned short)128:
       b4=20;
     default:
       b4=0;
  }
  if(b4==5)
    printf(" 2-4 TEST -O  K- \n");
  else
    printf(" 2-4 TEST - NG - \n");
 
   switch(ul5)  {
     case 5:
       b5=5;
       break;
     case 10:
     case 100:
       b5=10;
       break;
     case 128:
       b5=20;
     default:
       b5=0;
  }
  if(b5==10)
    printf(" 2-5 TEST -O  K- \n");
  else
    printf(" 2-5 TEST - NG - \n");
 
   switch(ul6)  {
     case (unsigned int)5:
       b6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       b6=10;
       break;
     case (unsigned int)20:
       b6=20;
     default:
       b6=0;
  }
  if(b6==0)
    printf(" 2-6 TEST -O  K- \n");
  else
    printf(" 2-6 TEST - NG - \n");
 
   switch(ul7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)10:
     case (long int)100:
       b7=10;
       break;
     case (long int)10000:
       b7=20;
     default:
       b7=0;
  }
  if(b7==0)
    printf(" 2-7 TEST -O  K- \n");
  else
    printf(" 2-7 TEST - NG - \n");
 
   switch(ul8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)4294967295:
       b8=10;
       break;
     case (unsigned long int)128:
       b8=20;
     default:
       b8=0;
  }
  if(b8==10)
    printf(" 2-8 TEST -O  K- \n");
  else
    printf(" 2-8 TEST - NG - \n");
 
  printf(" TEST-END \n");
 
exit (0);
}
