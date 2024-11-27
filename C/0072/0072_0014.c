#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    int i400a[10],i400b[10],i400c[10],i400e[10];
  } t;

  struct st1 *pt = &t;
  
  int i,j,k,iii;
  int        *ip1;
  int        *ip2;
  int        *ip3;

  for (i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    pt->i400a[i]=0;
    
    if(i==5) j=1;
    pt->i400b[i]=j;

    if(i==5) k=10;
    if(i%2)  pt->i400c[i]=k;
    else     pt->i400c[i]=-k;

    if(i<3)      pt->i400e[i]=2;
    else if(i<5) pt->i400e[i]=3;
    else if(i<7) pt->i400e[i]=-3;
    else         pt->i400e[i]=-2;
  }

 

  ip1 = &pt->i400b[0];
  for (i=0;i<10;i++)
  {
    pt->i400a[i] = *(ip1+i) + pt->i400c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 

  ip1 = &pt->i400c[0];
  for (i=0;i<10;i++)
  {
    pt->i400a[i] = pt->i400b[i] - *(ip1+i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 

  ip1 = &pt->i400a[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = pt->i400b[i] * pt->i400c[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 

  ip1 = &pt->i400a[0];
  ip2 = &pt->i400c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = pt->i400b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 

  ip1 = &pt->i400a[0];
  ip2 = &pt->i400c[0];
  ip3 = &pt->i400e[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = *(ip2+i) % *(ip3+i);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
  printf("\n");
exit (0);
}
