#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  double     d800a[10]={0,0,0,0,0,0,0,0,0,0};
  double     d800b[10]={2,4,6,8,10,1,3,5,7,9};
  double     d800c[10]={-9,7,-5,3,-1,10,-8,6,-4,2};
  double     d800d[10]={2,2,2,3,3,-3,-3,-2,-2,-2};
  int        i400a[10]={3,3,5,1,9,9,6,2,4,8};
  int i; 
  double     *ip1;
  double     *ip2;
  double     *ip3;
 
  ip1 = &d800b[0];
  for (i=0;i<10;i++)
  {
    d800c[i] = *ip1+i;
    d800a[i] = *(ip1+i) + d800c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
 
  ip1 = &d800c[9];
  for (i=9;i>=0;i--)
  {
    d800a[i] = d800b[i] - *(ip1-i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=9;i>=0;i--) printf("%f  ",d800a[i]);
 
  ip1 = &d800a[0];
  for (i=0;i<10;i+=2)
  {
    *(ip1+i) = d800b[i] * d800c[i] + i;
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
 
  ip1 = &d800a[0];
  ip2 = &d800c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i400a[i]) = d800b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
 
  ip1 = &d800a[9];
  ip2 = &d800c[9];
  ip3 = &d800d[9];
  for (i=9;i>=0;i-=2)
  {
    *(ip1-i400a[i]) = *(ip2-i) + *(ip3-i400a[i]);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",d800a[i]);
  printf("\n");
exit (0);
}
