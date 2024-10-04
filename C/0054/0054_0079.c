#include<stdio.h>
int func2();
int func1();
 

int main()
{
  printf("01 START\n");
  func1();
  func2();
  printf("01 END  \n");
}

int func1()
{
   volatile int a=0;
   volatile double f=0.0;
   volatile int ar[2];
   volatile int *ap=ar;
   int x=0;
   ar[1]=0;

   ++a;
   ++f;
   x=(++ar[a])+0;
   *(++ap)=10;

   if (f==1.0 &x==1 & ar[1]==10)
     printf("01 FUNC1 OK\n");
   else {
     printf("01 FUNC1 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}

int func2()
{
   int a=0;
   double f=0.0;
   int ar[2];
   int *ap=ar;
   int x=0;
   ar[1]=0;

   ++a;
   ++f;
   x=(++ar[a])+0;
   *(++ap)=10;

   if (f==1.0 &x==1 & ar[1]==10)
     printf("01 FUNC2 OK\n");
   else {
     printf("01 FUNC2 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}
