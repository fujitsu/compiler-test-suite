#include<stdio.h>
 

int main()  {

            char   c1=1;
            char   c2=2;
            char   c3=3;
            char   c4=4;
            char   c5=5;
            char   c6=10;
            char   c7=100;
            char   c8=127;
   unsigned char   uc1=1;
   unsigned char   uc2=2;
   unsigned char   uc3=3;
   unsigned char   uc4=4;
   unsigned char   uc5=5;
   unsigned char   uc6=10;
   unsigned char   uc7=100;
   unsigned char   uc8=127;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("09 TEST-START \n");

   switch(c1)  {
     case (char)5:
       a1=5;
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
  if(a1==0)
    printf("09 1-1 TEST -O  K- \n");
  else
    printf("09 1-1 TEST - NG - \n");

   switch(c2)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       a2=10;
       break;
     case (unsigned char)127:
       a2=20;
     default:
       a2=0;
  }
  if(a2==0)
    printf("09 1-2 TEST -O  K- \n");
  else
    printf("09 1-2 TEST - NG - \n");

   switch(c3)  {
     case (short)5:
       a3=5;
       break;
     case (short)10:
     case (short)100:
       a3=10;
       break;
     case (short)127:
       a3=20;
     default:
       a3=0;
  }
  if(a3==0)
    printf("09 1-3 TEST -O  K- \n");
  else
    printf("09 1-3 TEST - NG - \n");

   switch(c4)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       a4=10;
       break;
     case (unsigned short)127:
       a4=20;
     default:
       a4=0;
  }
  if(a4==0)
    printf("09 1-4 TEST -O  K- \n");
  else
    printf("09 1-4 TEST - NG - \n");

   switch(c5)  {
     case 5:
       a5=5;
       break;
     case 10:
     case 100:
       a5=10;
       break;
     case 127:
       a5=20;
     default:
       a5=0;
  }
  if(a5==5)
    printf("09 1-5 TEST -O  K- \n");
  else
    printf("09 1-5 TEST - NG - \n");

   switch(c6)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)10:
     case (unsigned int)100:
       a6=10;
       break;
     case (unsigned int)127:
       a6=20;
     default:
       a6=0;
  }
  if(a6==10)
    printf("09 1-6 TEST -O  K- \n");
  else
    printf("09 1-6 TEST - NG - \n");

   switch(c7)  {
     case (long int)5:
       a7=5;
       break;
     case (long int)10:
     case (long int)100:
       a7=10;
       break;
     case (long int)127:
       a7=20;
     default:
       a7=0;
  }
  if(a7==10)
    printf("09 1-7 TEST -O  K- \n");
  else
    printf("09 1-7 TEST - NG - \n");

   switch(c8)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       a8=10;
       break;
     case (unsigned long int)127:
       a8=20;
     default:
       a8=0;
  }
  if(a8==0)
    printf("09 1-8 TEST -O  K- \n");
  else
    printf("09 1-8 TEST - NG - \n");

   switch(uc1)  {
     case (char)5:
       b1=5;
       break;
     case (char)10:
     case (char)100:
       b1=10;
       break;
     case (char)127:
       b1=20;
     default:
       b1=0;
  }
  if(b1==0)
    printf("09 2-1 TEST -O  K- \n");
  else
    printf("09 2-1 TEST - NG - \n");

   switch(uc2)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)10:
     case (unsigned char)100:
       b2=10;
       break;
     case (unsigned char)127:
       b2=20;
     default:
       b2=0;
  }
  if(b2==0)
    printf("09 2-2 TEST -O  K- \n");
  else
    printf("09 2-2 TEST - NG - \n");

   switch(uc3)  {
     case (short)5:
       b3=5;
       break;
     case (short)1:
     case (short)10:
       b3=10;
       break;
     case (short)20:
       b3=20;
     default:
       b3=0;
  }
  if(b3==0)
    printf("09 2-3 TEST -O  K- \n");
  else
    printf("09 2-3 TEST - NG - \n");

   switch(uc4)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)10:
     case (unsigned short)100:
       b4=10;
       break;
     case (unsigned short)127:
       b4=20;
     default:
       b4=0;
  }
  if(b4==0)
    printf("09 2-4 TEST -O  K- \n");
  else
    printf("09 2-4 TEST - NG - \n");

   switch(uc5)  {
     case 5:
       b5=5;
       break;
     case 10:
     case 100:
       b5=10;
       break;
     case 127:
       b5=20;
     default:
       b5=0;
  }
  if(b5==5)
    printf("09 2-5 TEST -O  K- \n");
  else
    printf("09 2-5 TEST - NG - \n");

   switch(uc6)  {
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
  if(b6==10)
    printf("09 2-6 TEST -O  K- \n");
  else
    printf("09 2-6 TEST - NG - \n");

   switch(uc7)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)10:
     case (long int)100:
       b7=10;
       break;
     case (long int)127:
       b7=20;
     default:
       b7=0;
  }
  if(b7==10)
    printf("09 2-7 TEST -O  K- \n");
  else
    printf("09 2-7 TEST - NG - \n");

   switch(uc8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)100:
       b8=10;
       break;
     case (unsigned long int)127:
       b8=20;
     default:
       b8=0;
  }
  if(b8==0)
    printf("09 2-8 TEST -O  K- \n");
  else
    printf("09 2-8 TEST - NG - \n");

  printf("09 TEST-END \n");

}
