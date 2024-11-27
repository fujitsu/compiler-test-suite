#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  int        i400a[10]={0,0,0,0,0,0,0,0,0,0};
  int        i400b[10]={2,4,6,8,0,1,3,5,7,9};
  int        i400c[10]={9,4,5,3,10,1,8,6,4,2   };
  int        i400d[10]={5,5,5,5,5,9,9,9,9,9};
  int        i400e[10]={2,2,2,3,3,-3,-3,-2,-2,-2};
  int        i400p[10]={2,0,0,0,1,3,0,1,0,1};
  int        i400x[10]={2,4,6,8,0,1,3,5,7,9};
  int        i400y[10]={2,5,2,5,2,5,2,5,2,5};
  float      f400a[10]={1,1,0,1,0,1,1,1,1,1};
  float      f400b[10]={1,1,1,1,0,0,0,0,1,1};
  float      f400c[10]={2,1,2,1,2,0,2,1,2,1};
  float      f400d[10]={1,1,2,1,2,0,1,1,1,1};
  double     f800a[10]={0,3,4,1,0,2,2,0,5,0};
  double     f800b[10]={1,1,1,1,1,0,0,0,0,0};
  double     f800c[10]={1,1,1,1,1,1,1,1,1,1};
  double     f800p[10]={1,0,0,3,3,2,2,1,1,1};
  unsigned int  u400a[10]={1,1,1,0,1,0,1,1,1,0};
  unsigned int  u400b[10]={3,4,5,7,1,8,2,3,3,9};
  unsigned int  u400c[10]={3,2,2,3,2,3,2,3,3,3};
  int          i4x = 1;
  int i,j,m,n,n2;
  double       f8x = 2;
  int        *ip,*ip1,*ip2,*ips;
  float      *fp,*fp1,*fp2,*fps,fss=0;
  double     *dp,*dp1,*dp2;
  unsigned int  *up,*up1;

  m = 0;
  n = m+10;
  ip  = &i400b[0];
  fp  = &f400a[0];
  dp  = &f800a[0];
  for (i=m;i<n;i+=2)
  {
    *(fp+i) = *(ip+i) != i400c[i];
    if(u400a[i]!=u400b[i])
      *(fp+i) = i400c[i] < i400c[i400x[i]];
    else
      if(*(dp+i400x[i])>=1)
        *(fp+i) = (i400c[i]!=2) <= 2;
      else
        *(fp+i) = m > 7;
    *(fp+i) = (i400c[i]!=1) > (i400c[i400x[i]]!=0);
    if((*(fp+i))==0)
      *(fp+i) = *(ip+i) <= (*(ip+i)>=1);
    else
      *(fp+i) = *(ip+i) >= i400d[5];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",f400a[i]);

  n = n-1;
  n2 = m+2;
  fp1 = &f400a[9];
  dp1 = &f800a[9];
  up1 = &u400a[9];
  for (i=n;i>=m;i-=n2)
  {
    i400e[i] = i4x <= (i400e[i]<=1);
    if((u400b[i]+u400c[i]) == 4)
      *(up1-i400x[i]) = i400c[i400y[5]] != i400c[i400x[i]];
    if((u400b[i]-u400c[i]) != 5)
      *(dp1-i400x[i]) = i400y[i400x[i]] == (f400c[i]!=f400c[i]);
    if((u400b[i]+u400c[i]) == 6)
      *(fp1-i400y[i]) = i400x[n2] == 7;
    if((u400b[i]+u400c[i]) == 7)
      i400a[i400y[i]] = (f800b[i]!=f800c[5]) <= (f400b[i]!=f400b[i]);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d  ",i400e[i]);
  printf("\n");
  for (i=9;i>=0;i--) printf("%f  ",*(fp1-i));
  printf("\n");
  for (i=9;i>=0;i--) printf("%g  ",*(dp1-i));
  printf("\n");
  for (i=9;i>=0;i--) printf("%u  ",*(up1-i));

  m = 0;
  n = m+10;
  fps = &fss;
  ip2 = &i400p[0];
  dp2 = &f800p[0];
  for (i=m;i<n;i+=2)
  {
    if((u400b[i]+u400c[i]) == 7)
      *(ip2+1) = *(dp2+i400x[4]) == *(dp2+i400x[i]);
    if((u400b[i]+u400c[i]) == 7)
      *fps = *(dp2+i400x[i]) >= (*(dp2+i) != *(dp2+3));
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",i400p[i]);
  printf("\n");
  printf("%f  ",*fps);
  printf("\n");

exit (0);
}
