#include<stdio.h>
 

int main()  {

   int a1,a2,a3,a4,a5,a6,a7,a8;
   int b1,b2,b3,b4,b5,b6,b7,b8;

  printf("04 TEST-START \n");

   switch((long int)1)  {
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
    printf("04 1-1 TEST -O  K- \n");
  else
    printf("04 1-1 TEST - NG - \n");

   switch((long int)5)  {
     case (unsigned char)5:
       a2=5;
       break;
     case (unsigned char)1:
     case (unsigned char)10:
       a2=10;
       break;
     case (unsigned char)20:
       a2=20;
     default:
       a2=0;
  }
  if(a2==5)
    printf("04 1-2 TEST -O  K- \n");
  else
    printf("04 1-2 TEST - NG - \n");

   switch((long int)10)  {
     case (short)5:
       a3=5;
       break;
     case (short)1:
     case (short)10:
       a3=10;
       break;
     case (short)20:
       a3=20;
     default:
       a3=0;
  }
  if(a3==10)
    printf("04 1-3 TEST -O  K- \n");
  else
    printf("04 1-3 TEST - NG - \n");

   switch((long int)10)  {
     case (unsigned short)5:
       a4=5;
       break;
     case (unsigned short)1:
     case (unsigned short)10:
       a4=10;
       break;
     case (unsigned short)20:
       a4=20;
     default:
       a4=0;
  }
  if(a4==10)
    printf("04 1-4 TEST -O  K- \n");
  else
    printf("04 1-4 TEST - NG - \n");

   switch((long int)20)  {
     case 5:
       a5=5;
       break;
     case 1:
     case 10:
       a5=10;
       break;
     case 20:
       a5=20;
     default:
       a5=0;
  }
  if(a5==0)
    printf("04 1-5 TEST -O  K- \n");
  else
    printf("04 1-5 TEST - NG - \n");

   switch((long int)20)  {
     case (unsigned int)5:
       a6=5;
       break;
     case (unsigned int)1:
     case (unsigned int)10:
       a6=10;
       break;
     case (unsigned int)20:
       a6=20;
     default:
       a6=0;
  }
  if(a6==0)
    printf("04 1-6 TEST -O  K- \n");
  else
    printf("04 1-6 TEST - NG - \n");

   switch((long int)2)  {
     case (long int)5:
       a7=5;
       break;
     case (long int)1:
     case (long int)10:
       a7=10;
       break;
     case (long int)20:
       a7=20;
     default:
       a7=0;
  }
  if(a7==0)
    printf("04 1-7 TEST -O  K- \n");
  else
    printf("04 1-7 TEST - NG - \n");

   switch((long int)1)  {
     case (unsigned long int)5:
       a8=5;
       break;
     case (unsigned long int)1:
     case (unsigned long int)10:
       a8=10;
       break;
     case (unsigned long int)20:
       a8=20;
     default:
       a8=0;
  }
  if(a8==10)
    printf("04 1-8 TEST -O  K- \n");
  else
    printf("04 1-8 TEST - NG - \n");

   switch((unsigned long int)1)  {
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
    printf("04 2-1 TEST -O  K- \n");
  else
    printf("04 2-1 TEST - NG - \n");

   switch((unsigned long int)1)  {
     case (unsigned char)5:
       b2=5;
       break;
     case (unsigned char)1:
     case (unsigned char)10:
       b2=10;
       break;
     case (unsigned char)20:
       b2=20;
     default:
       b2=0;
  }
  if(b2==10)
    printf("04 2-2 TEST -O  K- \n");
  else
    printf("04 2-2 TEST - NG - \n");

   switch((unsigned long int)1)  {
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
  if(b3==10)
    printf("04 2-3 TEST -O  K- \n");
  else
    printf("04 2-3 TEST - NG - \n");

   switch((unsigned long int)10)  {
     case (unsigned short)5:
       b4=5;
       break;
     case (unsigned short)1:
     case (unsigned short)10:
       b4=10;
       break;
     case (unsigned short)20:
       b4=20;
     default:
       b4=0;
  }
  if(b4==10)
    printf("04 2-4 TEST -O  K- \n");
  else
    printf("04 2-4 TEST - NG - \n");

   switch((unsigned long int)10)  {
     case 5:
       b5=5;
       break;
     case 1:
     case 10:
       b5=10;
       break;
     case 20:
       b5=20;
     default:
       b5=0;
  }
  if(b5==10)
    printf("04 2-5 TEST -O  K- \n");
  else
    printf("04 2-5 TEST - NG - \n");

   switch((unsigned long int)10)  {
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
    printf("04 2-6 TEST -O  K- \n");
  else
    printf("04 2-6 TEST - NG - \n");

   switch((unsigned long int)5)  {
     case (long int)5:
       b7=5;
       break;
     case (long int)1:
     case (long int)10:
       b7=10;
       break;
     case (long int)20:
       b7=20;
     default:
       b7=0;
  }
  if(b7==5)
    printf("04 2-7 TEST -O  K- \n");
  else
    printf("04 2-7 TEST - NG - \n");

   switch((unsigned long int)2)  {
     case (unsigned long int)5:
       b8=5;
       break;
     case (unsigned long int)1:
     case (unsigned long int)10:
       b8=10;
       break;
     case (unsigned long int)20:
       b8=20;
     default:
       b8=0;
  }
  if(b8==0)
    printf("04 2-8 TEST -O  K- \n");
  else
    printf("04 2-8 TEST - NG - \n");

  printf("04 TEST-END \n");

}
