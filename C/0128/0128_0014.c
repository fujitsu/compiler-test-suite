#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  float      f400a[10]={0,0,0,0,0,0,0,0,0,0};
  float      f400b[10]={2,4,6,8,10,1,3,5,7,9};
  float      f400c[10]={-9,7,-5,3,-1,10,-8,6,-4,2};
  float      f400d[10]={2,2,2,3,3,-3,-3,-2,-2,-2};
  int        i400a[10]={3,3,5,1,9,9,6,2,4,8};
  int i , iii;
  float      *ip1;
  float      *ip2;
  float      *ip3;
 
  ip1 = &f400b[0];
  for (i=0;i<10;i++)
  {
    f400c[i] = *ip1+i;
    f400a[i] = *(ip1+i) + f400c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);
 
  ip1 = &f400c[9];
  for (i=9;i>=0;i--)
  {
    f400a[i] = f400b[i] - *(ip1-i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=9;i>=0;i--) printf("%f  ",f400a[i]);
 
  ip1 = &f400a[0];
  for (i=0;i<10;i+=2)
  {
    *(ip1+i) = f400b[i] * f400c[i] + i;
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);
 
  ip1 = &f400a[0];
  ip2 = &f400c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i400a[i]) = f400b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);
 
  ip1 = &f400a[9];
  ip2 = &f400c[9];
  ip3 = &f400d[9];
  for (i=9;i>=0;i-=2)
  {
    *(ip1-i400a[i]) = *(ip2-i) + *(ip3-i400a[i]);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);
  printf("\n");
exit (0);
}
