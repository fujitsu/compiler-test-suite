#include<stdio.h>
int func2();
int func1();
 

int main()
{
  printf("03 START\n");
  if (func1()==2)
     printf("03 FUNC1 RETURN VALUE OK\n");
  else
     printf("03 FUNC1 RETURN VALUE NG\n");
  if (func2()==2)
     printf("03 FUNC2 RETURN VALUE OK\n");
  else
     printf("03 FUNC2 RETURN VALUE NG\n");
  printf("03 END  \n");
}

int func1()
{
   volatile int a=0;
   volatile double f=0.0;
   volatile int ar[2];
   volatile int *ap=ar;
   int x=0;
   int c=1,d=1;
   ar[1]=0;

   a++;
   f++;
   x=(++ar[a])+(c&&d);
   *(ap++)=10;

   if (f==1.0 & x==2 & ar[0]==10)
     printf("03 FUNC1 OK\n");
   else {
     printf("03 FUNC1 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
   return x++;
}

int func2()
{
   int a=0;
   double f=0.0;
   int ar[2];
   int *ap=ar;
   int x=0;
   int c=1,d=1;
   ar[1]=0;

   a++;
   f++;
   x=(++ar[a])+(c&&d);
   *(ap++)=10;

   if (f==1.0 & x==2 & ar[0]==10)
     printf("03 FUNC1 OK\n");
   else {
     printf("03 FUNC1 NG\n");
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
   return x++;
}