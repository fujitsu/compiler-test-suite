#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    double d800a[10],d800b[10],d800c[10],d800d[10];
    int    i400a[10];
  } t;

  int i,j,k;
  double     *ip1;
  double     *ip2;
  double     *ip3;

  int        wk_i400a[10]={3,3,5,1,9,9,6,2,4,8};
 
  for(i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    t.d800a[i]=0;
    if(i==5) j=1; t.d800b[i]=j;
    if(i==5) k=10;
    if(i%2)  t.d800c[i]=j;
    else     t.d800c[i]=-j;
    if(i<3)      t.d800d[i]=2;
    else if(i<5) t.d800d[i]=3;
    else if(i<7) t.d800d[i]=-3;
    else         t.d800d[i]=-2;
    t.i400a[i]=wk_i400a[i];
  }

  ip1 = &t.d800b[0];
  for (i=0;i<10;i++)
  {
    t.d800c[i] = *ip1+i;
    t.d800a[i] = *(ip1+i) + t.d800c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",t.d800a[i]);
 
  ip1 = &t.d800c[9];
  for (i=9;i>=0;i--)
  {
    t.d800a[i] = t.d800b[i] - *(ip1-i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=9;i>=0;i--) printf("%f  ",t.d800a[i]);
 
  ip1 = &t.d800a[0];
  for (i=0;i<10;i+=2)
  {
    *(ip1+i) = t.d800b[i] * t.d800c[i] + i;
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",t.d800a[i]);
 
  ip1 = &t.d800a[0];
  ip2 = &t.d800c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+t.i400a[i]) = t.d800b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",t.d800a[i]);
 
  ip1 = &t.d800a[9];
  ip2 = &t.d800c[9];
  ip3 = &t.d800d[9];
  for (i=9;i>=0;i-=2)
  {
    *(ip1-t.i400a[i]) = *(ip2-i) + *(ip3-t.i400a[i]);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",t.d800a[i]);
  printf("\n");
exit (0);
}
