#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int        i400a[10]={1,2,3,4,5,5,6,6,7,7};
  int        i400b[10]={2,4,6,8,7,1,3,5,7,9};
  int        i400c[10]={9,4,-5,3,5,1,-8,6,-4,2};
  int        i400d[10]={5,5,5,5,5,9,9,9,9,9};
  int        i400x[10]={2,4,6,8,2,1,3,4,7,0};
  int        i400y[10]={2,1,0,5,2,5,2,5,2,5};
  float      f400a[10]={1,1,0,1,0,1,1,1,1,1};
  float      f400b[10]={3,3,3,3,3,3,3,3,3,3};
  float      f400c[10]={2,1,2,1,2,0,2,1,2,1};
  float      f400d[10]={1,1,2,1,2,0,1,1,1,1};
  float      f400e[10]={1,1,2,1,2,0,1,1,1,1};
  double     f800a[10]={0,0,0,0,0,0,0,0,0,0};
  double     f800b[10]={1,1,1,1,1,0,0,0,0,0};
  double     f800c[10]={0,0,0,0,0,0,0,0,0,0};
  double     f800d[10]={0,0,0,0,0,0,0,0,0,0};
  double     f800e[10]={1,1,1,1,1,1,1,1,1,1};
  double     f800f[10]={1,1,1,1,1,1,1,2,2,1};
  unsigned int  u400a[10]={0,0,0,0,0,0,0,0,0,0};
  unsigned int  u400b[10]={1,1,1,1,1,1,1,1,1,1};
  unsigned int  u400c[10]={3,5,5,5,5,5,5,5,5,3};
  int i,m,n;
  int j=0,k=0;
  float f4s=0;
  int        *ip,*ip1,*ip2;
  float      *fp,*fp1,*fps;
  double     *dp,*dp1,*dp2;

  m = 0;
  n = m+10;
  ip  = &i400b[0];
  fp  = &f400a[0];
  dp  = &f800a[0];
  for (i=m;i<n;i++)
  {
    *(fp+i) = *(ip+i) != i400c[i];
    if(u400a[i]==u400b[i])
      if(u400b[i]!=1)
        *(fp+i) = i400c[i] + 1;
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);

  fp1 = &f400e[0];
  for (i=m;i<n;i++)
  {
    if(u400a[i]!=u400b[i])
      if(u400a[i]!=u400c[i])
        if(u400b[i]!=u400c[i])
          *(fp1+i) = i400b[i] && i400c[i];
  }
  printf("\n");
  printf("** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",*(fp1+i));

  n=n-1;
  for (i=m;i<n;i++)
  {
    if(*(ip+i)>0)
      if(*(ip+i)>0)
      {
        i400c[i] = i400x[i+1];
        f800c[i] = *(ip+i400c[i]);
        if(u400a[i]!=u400b[5])
        {
          *(fp+i) = f800c[i] + f800b[i];
        }
      }
    if(*(fp+i)!=0){
      f800a[j] = *(fp+i) * 3;
      j = j + 1;}
    else{
      *(fp+i) = u400a[k];
      k = k + 1;}
  }
  printf("\n");
  printf("** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",f800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f  ",*(fp+i));

  n = n+1;
  ip1 = &i400x[0];

  dp1 = &f800d[0];
  for (i=m;i<n;i++)
  {
    if(f400b[i]>f400c[i])
    {
      switch(*(ip1+i) + 2)
      {
      case 4:
        *(dp1+i) = sin(f800e[i]);
        break;
      case 5:
        if(u400a[i]!=u400b[i])
        *(dp1+i) = sin(f800e[i])+1;
        else
        *(dp1+i) = cos(f800e[i])+2;
        break;
      case 6:
        if(u400b[i]!=u400c[i])
        *(dp1+i) = 100 / tan(f800e[i]);
      default:
        break;
      }
    }
    else
    {
      switch(*(ip1+i) + i400x[i])
      {
      case 4:
        break;
      case 5:
        if(*(ip1+i)!=2)
          if(*(ip1+i)>=2)
            *(dp1+i) = cos(f800e[i]) + sin(f800f[i]);
        break;
      case 6:
        if(u400b[i]==u400c[i]){}
        else
            *(dp1+i) = tan(f800e[i]) * 2 * 2;
      default:
        break;
      }
    }
  }
  printf("\n");
  printf("** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",*(dp1+i));
  printf("\n");

exit (0);
}
