#include<stdio.h>
 

int main()  {

            short  s1=1;
            short  s2=3;
            short  s3=5;
            short  s4=10;
            short  s5=100;
            short  s6=10000;
            short  s7=-32768;
            short  s8=32767;
   unsigned short  us1=1;
   unsigned short  us2=2;
   unsigned short  us3=3;
   unsigned short  us4=5;
   unsigned short  us5=10;
   unsigned short  us6=100;
   unsigned short  us7=10000;
   unsigned short  us8=65535;

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("10 TEST-START \n");

   switch(s1)  {
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
    printf("10 1-1 TEST -O  K- \n");
  else
    printf("10 1-1 TEST - NG - \n");

   switch(s2)  {
     case (unsigned char)3:
       a2=3;
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
  if(a2==3)
    printf("10 1-2 TEST -O  K- \n");
  else
    printf("10 1-2 TEST - NG - \n");

   switch(s3)  {
     case (short)5:
       a3=5;
       break;
     case (short)10:
     case (short)100:
       a3=10;
       break;
     case (short)128:
       a3=20;
     default:
       a3=0;
  }
  if(a3==5)
    printf("10 1-3 TEST -O  K- \n");
  else
    printf("10 1-3 TEST - NG - \n");

   switch(s4)  {
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
    printf("10 1-4 TEST -O  K- \n");
  else
    printf("10 1-4 TEST - NG - \n");

   switch(s5)  {
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
    printf("10 1-5 TEST -O  K- \n");
  else
    printf("10 1-5 TEST - NG - \n");

   switch(s6)  {
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
    printf("10 1-6 TEST -O  K- \n");
  else
    printf("10 1-6 TEST - NG - \n");

   switch(s7)  {
     case (long int)-32768:
       a7=5;
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
  if(a7==5)
    printf("10 1-7 TEST -O  K- \n");
  else
    printf("10 1-7 TEST - NG - \n");

   switch(s8)  {
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
    printf("10 1-8 TEST -O  K- \n");
  else
    printf("10 1-8 TEST - NG - \n");

   switch(us1)  {
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
    printf("10 2-1 TEST -O  K- \n");
  else
    printf("10 2-1 TEST - NG - \n");

   switch(us2)  {
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
    printf("10 2-2 TEST -O  K- \n");
  else
    printf("10 2-2 TEST - NG - \n");

   switch(us3)  {
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
    printf("10 2-3 TEST -O  K- \n");
  else
    printf("10 2-3 TEST - NG - \n");

   switch(us4)  {
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
    printf("10 2-4 TEST -O  K- \n");
  else
    printf("10 2-4 TEST - NG - \n");

   switch(us5)  {
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
    printf("10 2-5 TEST -O  K- \n");
  else
    printf("10 2-5 TEST - NG - \n");

   switch(us6)  {
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
    printf("10 2-6 TEST -O  K- \n");
  else
    printf("10 2-6 TEST - NG - \n");

   switch(us7)  {
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
    printf("10 2-7 TEST -O  K- \n");
  else
    printf("10 2-7 TEST - NG - \n");

   switch(us8)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)10:
     case (unsigned long int)65535:
       b8=10;
       break;
     case (unsigned long int)128:
       b8=20;
     default:
       b8=0;
  }
  if(b8==10)
    printf("10 2-8 TEST -O  K- \n");
  else
    printf("10 2-8 TEST - NG - \n");

  printf("10 TEST-END \n");

}
