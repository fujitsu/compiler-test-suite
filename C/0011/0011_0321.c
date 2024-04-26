#include  <stdio.h>

int main()
{
  int a,b;
  volatile int  t1,t2,t3,k,l;

  for(a=0;a<5;a++)
    {
      t1 = a;
      t2 = t1+a;
      t3 = t2+t1;
    }
  l = t1 + t2 + t3;
  for(a=0,k=0;a<5;a++)
    {
     for(b=0;b<5;b++)
       {
        t1=a+b;
        t2=t1+b;
       }
     t3 = t1+t2+l;
    }
    k = t3+l;
    if( k == 68)
           printf(" ok \n");
    else
           printf(" ng \n");
 }
