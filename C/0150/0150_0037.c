#include <stdlib.h>
#include <stdio.h>
#include <math.h>
int func2();
int func1();
int main()
{
  int f=0;
  printf(" START\n");
  f=func1();
  if (f==2)
     printf(" FUNC1 RETURN VALUE OK\n");
  else {
     printf(" FUNC1 RETURN VALUE NG\n");
     printf("FUNC1=%d\n",f);
     }
  f=func2();
  if (f==2)
     printf(" FUNC2 RETURN VALUE OK\n");
  else {
     printf(" FUNC2 RETURN VALUE NG\n");
     printf("FUNC2=%d\n",f);
     }
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
   int c=1,d=1;
   ar[0]=1;
 
   a--;
   f--;
   x=(ar[a]--)+(c&&d);
   *(ap++)=10;
 
   if (f==0.0 & x==2 & ar[0]==0 & ar[1]==10)
     printf(" FUNC1 OK\n");
   else {
     printf(" FUNC1 NG\n");
     printf("AR[0]=%d\n",ar[0]);
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
   return x++;
}
int func2()
{
   int a=1;
   double f=1.0;
   int ar[2];
   int *ap=ar+1;
   int x=0;
   int c=1,d=1;
   ar[0]=1;
 
   a--;
   f--;
   x=(ar[a]--)+(c&&d);
   *(ap++)=10;
 
   if (f==0.0 & x==2 & ar[0]==0 & ar[1]==10)
     printf(" FUNC1 OK\n");
   else {
     printf(" FUNC2 NG\n");
     printf("AR[0]=%d\n",ar[0]);
     printf("AR[1]=%d\n",ar[1]);
     printf("X=%d\n",x);
     printf("F=%f\n",f);
     }
   return x++;
}
