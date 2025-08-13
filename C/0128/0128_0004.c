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
  double     f800a[10]={0,0,0,0,0,0,0,0,0,0};
  double     f800b[10]={1,1,1,1,1,0,0,0,0,0};
  unsigned int  u400a[10]={1,1,1,0,1,0,1,1,1,0};
  unsigned int  u400b[10]={3,1,1,7,1,1,2,3,3,9};
  unsigned int  u400c[10]={3,5,5,5,5,5,5,5,5,3};
  int i,j,m,n;
  float    f4s=0;
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
    if(u400a[i]!=u400b[i]){
      *(fp+i) = i400c[i] < 1;}
      if(u400b[i]!=u400c[i]){
        *(fp+i) = i400c[i] + 1;}
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);

  m = 0;
  for (i=m;i<n;i++)
  {
    *(fp+i) = 99;
    if(u400a[i]!=u400b[i])
    {
      *(fp+i) = i400c[i] < 1;
      if(u400a[i]!=u400b[5])
      {
        *(fp+i) = i400c[i] * 10;
        if(u400a[i]!=u400b[7])
        {
          *(fp+i) = i400c[i] < 1;
          if(u400a[i]!=u400c[1])
            *(fp+i) = (i400c[i] < i400b[i]) < i400b[3];
          else if(u400b[i]!=u400c[i])
            *(fp+i) = 88;
               else
            *(fp+i) = (((88 > i400b[i]) > i400b[3]) > 10) + 111;
        }
      }
    }
  }
  printf("\n");
  printf("** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);

  m = 0;
  for (i=m;i<n;i++)
  {
    *(dp+i) = i400b[i] == 0;
    if(i400b[i]>=1)
      if(i400b[i]>=2)
        if(i400b[i]>3)
          if(i400b[i]>4)
            if(f400b[i]<=9)
              if(f400b[i]<=8)
                if(f400b[i]<7)
                  if(f400b[i]>f400c[i])
                    if(u400a[i]==u400b[i])
                      if(u400a[5]!=u400b[5])
                        if(u400a[i]!=f400b[4])
                          if(i400b[i]!=f400b[i])
                            if(i400b[i]>=i400c[i])
                              if(i400b[i]<=i400b[i])
                                if(i400c[i]==i400c[i])
                                  *(dp+i) = i400c[i];
  }
  printf("\n");
  printf("** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",f800a[i]);

  m = 0;
  ip1 = &i400x[0];
  fp1 = &f400d[0];
  dp1 = &f800a[5];
  for (i=m;i<n;i++)
  {
    switch(*(ip1+i) + 2)
    {
    case 4:
      *(fp1+i) = *(ip1+i) != i400c[i];
      break;
    case 5:
      if(u400a[i]!=u400b[i])
        *(fp1+i) = *(ip1+i) + 10;
      else
        *(fp1+i) = *(ip1+i) > 10;
      break;
    case 6:
      if(u400b[i]!=u400c[i])
        *dp1 = i400c[i] * i400c[3];
    default:
      break;
    }
  }
  printf("\n");
  printf("** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400d[i]);
  printf("\n%f  ",*dp1);

  m = 0;
  ip2 = &i400y[0];
  fps = &f4s;
  dp2 = &f800b[0];
  for (i=m;i<n;i++)
  {
    switch(*(ip2+i) + i400x[i])
    {
    case 4:
      break;
    case 5:
      if(*(ip2+i)!=2)
        if(*(ip2+i)>=2)
          *(dp2+i) = *(ip2+i) + 10;
      break;
    case 6:
      if(u400b[i]==u400c[i]){}
      else
        *fps = (i400c[i] <= i400c[3]) * 3;
    default:
      break;
    }
  }
  printf("\n");
  printf("** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",f800b[i]);
  printf("\n%f  ",*fps);
  printf("\n");

exit (0);
}
