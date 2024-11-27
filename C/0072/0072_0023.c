#include <stdio.h>
#include <math.h>

#include <stdlib.h>
int main()
{
  struct st1 {
    int a[10],b[10],c[10];
  } t1;
  struct st1 *pt = &t1;

  int i,*p,*q,k=1;

  for(i=0;i<10;i++){
    pt->b[i]=i+1;
    if(i==0 || i==2 || i==5  || i==6 || i==7)
      pt->c[i]=1;
    else
      pt->c[i]=0;
  }
 
  p=q=&pt->b[0];
  for(i=0;i<10;i++)
    if(i%2) pt->a[i] = abs(i);
    else    pt->a[i] = *(p+i);
 
  for(i=0;i<10;i++) printf("%d ",pt->a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
    if (i%2&&*(p+i)%3) pt->a[i] = sqrt((double)i);
    else pt->a[i] = - sqrt((double)(i+1));
 
  for(i=0;i<10;i++) printf("%d ",pt->a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    switch (i%3)
    {
      case 0 : pt->a[i] = *(p+i) & i;
               break;
      case 1 : pt->a[i] = *(p+i) | i;
               break;
      default: pt->a[i] = *(p+i) ^ i;
    }
    if (i<4) *(p+i) = i;
    else *(q+i) = -i;
  }
 
  for(i=0;i<10;i++) printf("%d ",pt->a[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",pt->b[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
    if (*(p+i)%9||(i+1)%9||i>9||k) pt->a[i] = i;
    else  break;
 
  for(i=0;i<10;i++) printf("%d ",pt->a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    if (pt->b[i]<0||*(p+i)<-1)
      if (pt->c[i]==2||*(q+i)<-2)
        if (i<pt->b[i]-i) break;
        else pt->a[i] = pt->a[i]%(i+1);
  }
 
  for(i=0;i<10;i++) printf("%d ",pt->a[i]);
  printf("\n");
 
exit (0);
}
