#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    int      i400a[10],i400b[10],i400c[10],i400d[10],i400x[10],i400y[10];
    float    f400a[10],f400b[10],f400c[10],f400d[10],f400e[10];
    double   f800a[10],f800b[10],f800c[10],f800d[10],f800e[10],f800f[10];
    unsigned int  u400a[10],u400b[10],u400c[10];
  } t;

  int i,m,n;
  int j=0,k=0;
  float f4s=0;
  int        *ip,*ip1,*ip2;
  float      *fp,*fp1,*fps;
  double     *dp,*dp1,*dp2;
  struct st1 *pt = &t;

  int        wk_i400c[10]={9,4,-5,3,5,1,-8,6,-4,2};
  int        wk_i400x[10]={2,4,6,8,2,1,3,4,7,0};
  
  for(i=0,m=1;i<10;i++,m++){
    if(i>=4){
      pt->i400a[i]=m;
      pt->i400a[i+1]=m;
      i++;
    }else{
      pt->i400a[i]=m;
    }
  }

  for(i=0,m=2;i<10;i++,m+=2){
    
    if(i==4)      m=7;
    else if(i==5) m=1;
    pt->i400b[i]=m;
    pt->i400c[i]=wk_i400c[i];
    if(i<5) pt->i400d[i]=5;
    else    pt->i400d[i]=9;
    pt->i400x[i]=wk_i400x[i];
    if(i==1)      pt->i400y[i]=1;
    else if(i==2) pt->i400y[i]=0;
    else if(i%2)  pt->i400y[i]=5;
    else          pt->i400y[i]=2;

    if(i==2 || i==4) pt->f400a[i]=0;
    else             pt->f400a[i]=1;
    pt->f400b[i]=3;
    if(i==5)     pt->f400c[i]=0;
    else if(i%2) pt->f400c[i]=1;
    else         pt->f400c[i]=2;
    if(i==2 || i==4){
      pt->f400d[i]=2;
      pt->f400e[i]=2;
    }
    else if(i==5){
      pt->f400d[i]=0;
      pt->f400e[i]=0;
    }
    else{
      pt->f400d[i]=1;
      pt->f400e[i]=1;
    }

    pt->f800a[i]=0;
    if(i<5) pt->f800b[i]=1;
    else    pt->f800b[i]=0;
    pt->f800c[i]=0;
    pt->f800d[i]=0;
    pt->f800e[i]=1;
    if(i==7 || i==8) pt->f800f[i]=2;
    else             pt->f800f[i]=1;

    pt->u400a[i]=0;
    pt->u400b[i]=1;
    if(i==0 || i==9) pt->u400c[i]=3;
    else             pt->u400c[i]=5;
  }


  m = 0;
  n = m+10;
  ip  = &pt->i400b[0];
  fp  = &pt->f400a[0];
  dp  = &pt->f800a[0];
  for (i=m;i<n;i++)
  {
    *(fp+i) = *(ip+i) != pt->i400c[i];
    if(pt->u400a[i]==pt->u400b[i])
      if(pt->u400b[i]!=1)
        *(fp+i) = pt->i400c[i] + 1;
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);

  fp1 = &pt->f400e[0];
  for (i=m;i<n;i++)
  {
    if(pt->u400a[i]!=pt->u400b[i])
      if(pt->u400a[i]!=pt->u400c[i])
        if(pt->u400b[i]!=pt->u400c[i])
          *(fp1+i) = pt->i400b[i] && pt->i400c[i];
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
        pt->i400c[i] = pt->i400x[i+1];
        pt->f800c[i] = *(ip+pt->i400c[i]);
        if(pt->u400a[i]!=pt->u400b[5])
        {
          *(fp+i) = pt->f800c[i] + pt->f800b[i];
        }
      }
    if(*(fp+i)!=0){
      pt->f800a[j] = *(fp+i) * 3;
      j = j + 1;}
    else{
      *(fp+i) = pt->u400a[k];
      k = k + 1;}
  }
  printf("\n");
  printf("** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f  ",*(fp+i));

  

  n = n+1;
  ip1 = &pt->i400x[0];

  dp1 = &pt->f800d[0];
  for (i=m;i<n;i++)
  {
    if(pt->f400b[i]>pt->f400c[i])
    {
      switch(*(ip1+i) + 2)
      {
      case 4:
        *(dp1+i) = sin(pt->f800e[i]);
        break;
      case 5:
        if(pt->u400a[i]!=pt->u400b[i])
        *(dp1+i) = sin(pt->f800e[i])+1;
        else
        *(dp1+i) = cos(pt->f800e[i])+2;
        break;
      case 6:
        if(pt->u400b[i]!=pt->u400c[i])
        *(dp1+i) = 100 / tan(pt->f800e[i]);
      default:
        break;
      }
    }
    else
    {
      switch(*(ip1+i) + pt->i400x[i])
      {
      case 4:
        break;
      case 5:
        if(*(ip1+i)!=2)
          if(*(ip1+i)>=2)
            *(dp1+i) = cos(pt->f800e[i]) + sin(pt->f800f[i]);
        break;
      case 6:
        if(pt->u400b[i]==pt->u400c[i]){}
        else
            *(dp1+i) = tan(pt->f800e[i]) * 2 * 2;
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
