#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    float f400a[10],f400b[10],f400c[10],f400d[10];
    int   i400a[10];
  } t;

  int i,j,k,iii;
  float      *ip1;
  float      *ip2;
  float      *ip3;
  struct st1 *pt = &t;
  int wk_i400a[10]={3,3,5,1,9,9,6,2,4,8};

  for (i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    pt->f400a[i]=0;
    if(i==5) j=1;
    pt->f400b[i]=j;
    if(i==5) k=10;
    if(i%2)  pt->f400c[i]=k;
    else     pt->f400c[i]=-k;
    if(i<3)      pt->f400d[i]=2;
    else if(i<5) pt->f400d[i]=3;
    else if(i<7) pt->f400d[i]=-3;
    else         pt->f400d[i]=-2;
    pt->i400a[i]=wk_i400a[i];
  }

  ip1 = &pt->f400b[0];
  for (i=0;i<10;i++)
  {
    pt->f400c[i] = *ip1+i;
    pt->f400a[i] = *(ip1+i) + pt->f400c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);
 
  ip1 = &pt->f400c[9];
  for (i=9;i>=0;i--)
  {
    pt->f400a[i] = pt->f400b[i] - *(ip1-i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=9;i>=0;i--) printf("%f  ",pt->f400a[i]);
 
  ip1 = &pt->f400a[0];
  for (i=0;i<10;i+=2)
  {
    *(ip1+i) = pt->f400b[i] * pt->f400c[i] + i;
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);
 
  ip1 = &pt->f400a[0];
  ip2 = &pt->f400c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+pt->i400a[i]) = pt->f400b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);
 
  ip1 = &pt->f400a[9];
  ip2 = &pt->f400c[9];
  ip3 = &pt->f400d[9];
  for (i=9;i>=0;i-=2)
  {
    *(ip1-pt->i400a[i]) = *(ip2-i) + *(ip3-pt->i400a[i]);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);
  printf("\n");
exit (0);
}

