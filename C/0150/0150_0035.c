#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2();
int func1();
int main()
{
  printf(" START\n");
  func1();
  func2();
  printf(" END  \n");
exit (0);
}
int func1()
{
   volatile int a=1;
   volatile double f=1.0;
   volatile int ar[2];
   volatile int *ap=ar+1;
   int x=0;
   ar[0]=1;
 
   --f;
   x=(--ar[--a])+1;
   *(--ap)=10;
 
   if (f==0.0 &x==1 & ar[0]==10)
     printf(" FUNC1 OK\n");
   else {
     printf(" FUNC1 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}
int func2()
{
   int a=1;
   double f=1.0;
   int ar[2];
   int *ap=ar+1;
   int x=0;
   ar[0]=1;
 
   --f;
   x=(--ar[--a])+1;
   *(--ap)=10;
 
   if (f==0.0 &x==1 & ar[0]==10)
     printf(" FUNC2 OK\n");
   else {
     printf(" FUNC2 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
}
