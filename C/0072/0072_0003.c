#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    int      i400a[10],i400b[10],i400c[10],i400d[10];
    int      i400e[10],i400p[10],i400x[10],i400y[10];
    float    f400a[10],f400b[10],f400c[10],f400d[10];
    double   f800a[10],f800b[10],f800c[10],f800p[10];
    unsigned int  u400a[10],u400b[10],u400c[10];
  } t;

  int      i4x = 1;
  int i,j,m,n,n2;
  double       f8x = 2;
  int        *ip,*ip1,*ip2,*ips;
  float      *fp,*fp1,*fp2,*fps,fss=0;
  double     *dp,*dp1,*dp2;
  unsigned int  *up,*up1;
  struct st1 *pt = &t;
  int    wk_i400c[10]={9,4,5,3,10,1,8,6,4,2};
  int    wk_i400p[10]={2,0,0,0,1,3,0,1,0,1};
  double wk_f800a[10]={0,3,4,1,0,2,2,0,5,0};
  double wk_f800p[10]={1,0,0,3,3,2,2,1,1,1};
  int    wk_u400b[10]={3,4,5,7,1,8,2,3,3,9};

  for(i=0,j=2;i<10;i++,j+=2){
    pt->i400a[i]=0;
    if(i==4)      j=0;
    else if(i==5) j=1;
    pt->i400b[i]=j;
    pt->i400c[i]=wk_i400c[i];
    if(i<5) pt->i400d[i]=5;
    else    pt->i400d[i]=9;
    if(i<3)      pt->i400e[i]=2;
    else if(i<5) pt->i400e[i]=3;
    else if(i<7) pt->i400e[i]=-3;
    else         pt->i400e[i]=-2;
    pt->i400p[i]=wk_i400p[i];
    pt->i400x[i]=j;
    if(i%2) pt->i400y[i]=5;
    else    pt->i400y[i]=2;
    if(i==2 || i==4) pt->f400a[i]=0;
    else             pt->f400a[i]=1;
    if(4<=i && i<=7) pt->f400b[i]=0;
    else             pt->f400b[i]=1;
    if(i==5)     pt->f400c[i]=0;
    else if(i%2) pt->f400c[i]=1;
    else         pt->f400c[i]=2;
    if(i==2 || i==4) pt->f400d[i]=2;
    else if(i==5) pt->f400d[i]=5;
    else          pt->f400d[i]=0;
    pt->f800a[i]=wk_f800a[i];
    if(i<5) pt->f800b[i]=1;
    else    pt->f800b[i]=0;
    pt->f800c[i]=1;
    pt->f800p[i]=wk_f800p[i];
    if(i==3 || i==5 || i==9) pt->u400a[i]=0;
    else                     pt->u400a[i]=1;
    pt->u400b[i]=wk_u400b[i];
    if(i==1 || i==2 || i==4 || i==6) pt->u400c[i]=2;
    else                             pt->u400c[i]=3;
  }


  m = 0;
  n = m+10;
  ip  = &pt->i400b[0];
  fp  = &pt->f400a[0];
  dp  = &pt->f800a[0];
  for (i=m;i<n;i+=2)
  {
    *(fp+i) = *(ip+i) != pt->i400c[i];
    if(pt->u400a[i]!=pt->u400b[i])
      *(fp+i) = pt->i400c[i] < pt->i400c[pt->i400x[i]];
    else
      if(*(dp+pt->i400x[i])>=1)
        *(fp+i) = (pt->i400c[i]!=2) <= 2;
      else
        *(fp+i) = m > 7;
    *(fp+i) = (pt->i400c[i]!=1) > (pt->i400c[pt->i400x[i]]!=0);
    if((*(fp+i))==0)
      *(fp+i) = *(ip+i) <= (*(ip+i)>=1);
    else
      *(fp+i) = *(ip+i) >= pt->i400d[5];
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);

  n = n-1;
  n2 = m+2;
  fp1 = &pt->f400a[9];
  dp1 = &pt->f800a[9];
  up1 = &pt->u400a[9];
  for (i=n;i>=m;i-=n2)
  {
    pt->i400e[i] = i4x <= (pt->i400e[i]<=1);
    if((pt->u400b[i]+pt->u400c[i]) == 4)
      *(up1-pt->i400x[i]) = pt->i400c[pt->i400y[5]] != pt->i400c[pt->i400x[i]];
    if((pt->u400b[i]-pt->u400c[i]) != 5)
      *(dp1-pt->i400x[i]) = pt->i400y[pt->i400x[i]] == (pt->f400c[i]!=pt->f400c[i]);
    if((pt->u400b[i]+pt->u400c[i]) == 6)
      *(fp1-pt->i400y[i]) = pt->i400x[n2] == 7;
    if((pt->u400b[i]+pt->u400c[i]) == 7)
      pt->i400a[pt->i400y[i]] = (pt->f800b[i]!=pt->f800c[5]) <= (pt->f400b[i]!=pt->f400b[i]);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400e[i]);
  printf("\n");
  for (i=9;i>=0;i--) printf("%f  ",*(fp1-i));
  printf("\n");
  for (i=9;i>=0;i--) printf("%g  ",*(dp1-i));
  printf("\n");
  for (i=9;i>=0;i--) printf("%u  ",*(up1-i));

  m = 0;
  n = m+10;
  fps = &fss;
  ip2 = &pt->i400p[0];
  dp2 = &pt->f800p[0];
  for (i=m;i<n;i+=2)
  {
    if((pt->u400b[i]+pt->u400c[i]) == 7)
      *(ip2+1) = *(dp2+pt->i400x[4]) == *(dp2+pt->i400x[i]);
    if((pt->u400b[i]+pt->u400c[i]) == 7)
      *fps = *(dp2+pt->i400x[i]) >= (*(dp2+i) != *(dp2+3));
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400p[i]);
  printf("\n");
  printf("%f  ",*fps);
  printf("\n");

exit (0);
}
