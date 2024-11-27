#include <stdio.h>
#include <math.h>

#include <stdlib.h>
int main()
{
  int i,a[10],*p,*q,k=1;
  int b[10]={1,2,3,4,5,6,7,8,9,10};
  int c[10]={1,0,1,0,0,1,1,1,0,0};
 
  p=q=&b[0];
  for(i=0;i<10;i++)
    if(i%2) a[i] = abs(i);
    else    a[i] = *(p+i);
 
  for(i=0;i<10;i++) printf("%d ",a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
    if (i%2&&*(p+i)%3) a[i] = sqrt((double)i);
    else a[i] = - sqrt((double)(i+1));
 
  for(i=0;i<10;i++) printf("%d ",a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    switch (i%3)
    {
      case 0 : a[i] = *(p+i) & i;
               break;
      case 1 : a[i] = *(p+i) | i;
               break;
      default: a[i] = *(p+i) ^ i;
    }
    if (i<4) *(p+i) = i;
    else *(q+i) = -i;
  }
 
  for(i=0;i<10;i++) printf("%d ",a[i]);
  printf("\n");
  for(i=0;i<10;i++) printf("%d ",b[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
    if (*(p+i)%9||(i+1)%9||i>9||k) a[i] = i;
    else  break;
 
  for(i=0;i<10;i++) printf("%d ",a[i]);
  printf("\n");
 
  for(i=0;i<10;i++)
  {
    if (b[i]<0||*(p+i)<-1)
      if (c[i]==2||*(q+i)<-2)
        if (i<b[i]-i) break;
        else a[i] = a[i]%(i+1);
  }
 
  for(i=0;i<10;i++) printf("%d ",a[i]);
  printf("\n");
 
exit (0);
}
