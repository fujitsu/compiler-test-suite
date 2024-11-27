#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int        i400a[10]={0,0,0,0,0,0,0,0,0,0};
  int        i400b[10]={2,4,6,8,10,1,3,5,7,9};
  int        i400c[10]={-9,7,-5,3,-1,10,-8,6,-4,2};
  int        i400d[10]={5,5,5,5,5,9,9,9,9,9};
  int        i400e[10]={2,2,2,3,3,-3,-3,-2,-2,-2};
  float      f400a[10]={1,1,0,1,0,1,0,0,1,1};
  float      f400b[10]={1,1,1,1,0,0,0,0,1,1};
  double     f800a[10]={0,0,0,0,0,0,0,0,0,0};
  long long int i800a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int  u400a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int  u400b[10]={3,4,5,7,1,8,2,3,3,9};
  unsigned int  u400c[10]={3,2,2,3,2,3,2,3,3,3};
  unsigned long long int u800a[10]={0,0,0,0,0,0,0,0,0,0};

  int i; 
  int        *ip1;
  int        *ip2;
  int        *ip3;

  unsigned int  *up1,*up2,*up3;
 
  ip1 = &i400b[0];
  ip2 = ip1;
  for (i=0;i<10;i++)
  {
    i400a[i] = *(ip1+i) + i400c[i];
    if(f400a[i]==f400b[i])
      i400a[i] = *(ip1+i)+i;
    else 
      i400a[i] = *(ip2+i)+2;
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 
  ip1 = &i400c[0];
  for (i=0;i<10;i++)
  {
    i400a[i] = i400a[i] + i400b[i];
    if(f400a[i]!=(f400b[i]-1))
      i400a[i] = 77;
    else 
      i400a[i] = i400b[i] - *(ip1+i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
 
  up1 = &u400a[0];
  up2 = &u400b[0];
  up3 = &u400c[0];
  for (i=0;i<10;i++)
  {
    *(up1+i) = *(up2+i) != *(up3+i);
    if(*(up2+i) == *(up3+i))
      u400a[i] = *(up2+i) && *(up3+i);
    else 
      *(up1+i) = u400b[i] + u400c[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",u400a[i]);
 
  *ip1 = 1;
  for (i=0;i<10;i++)
  {
    if(f400a[i]!=(f400b[i]-1)){
      i400b[i] = f400a[i]==f400b[i];
      if(f400a[i]!=(f400b[i]-1)){
        i400a[i] = i400b[i];
        u400a[i] = u800a[i]
        = i800a[i] = f800a[i] = f400a[i] = i400a[i]+1;
      }
    else 
      i400a[i] = i400c[i] - *(ip1+i);}
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%d   ",i400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",(int)i800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f   ",f400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f   ",f800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",u400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",(int)u800a[i]);
  printf("\n");
  exit(0);
}
