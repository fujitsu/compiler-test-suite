#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int        i400a[10]={0,0,0,0,0,0,0,0,0,0};
  int        i400b[10]={2,4,6,8,10,1,3,5,7,9};
  int        i400c[10]={-9,7,-5,3,-1,10,-8,6,-4,2};

  int        i400e[10]={2,2,2,3,3,-3,-3,-2,-2,-2};

  int i , iii;
  int        *ip1;
  int        *ip2;
  int        *ip3;
 

  ip1 = &i400b[0];
  for (i=0;i<10;i++)
  {
    i400a[i] = *(ip1+i) + i400c[i];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 

  ip1 = &i400c[0];
  for (i=0;i<10;i++)
  {
    i400a[i] = i400b[i] - *(ip1+i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 

  ip1 = &i400a[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = i400b[i] * i400c[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 

  ip1 = &i400a[0];
  ip2 = &i400c[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = i400b[i] / *(ip2+i);
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 

  ip1 = &i400a[0];
  ip2 = &i400c[0];
  ip3 = &i400e[0];
  for (i=0;i<10;i++)
  {
    *(ip1+i) = *(ip2+i) % *(ip3+i);
  }
  printf("\n");
  printf("\n** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
  printf("\n");
exit (0);
}
