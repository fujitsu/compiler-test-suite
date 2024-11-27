#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    int      i400a[10],i400b[10],i400c[10],i400d[10],i400x[10],i400y[10];
    float    f400a[10],f400b[10],f400c[10],f400d[10];
    double   f800a[10],f800b[10];
    unsigned int u400a[10],u400b[10],u400c[10];
  } t;

  struct st1 *pt = &t;
  
  int i,j,m,n;
  float    f4s=0;
  int        *ip,*ip1,*ip2;
  float      *fp,*fp1,*fps;
  double     *dp,*dp1,*dp2;
  int          wk_i400c[10]={9,4,-5,3,5,1,-8,6,-4,2};
  int          wk_i400x[10]={2,4,6,8,2,1,3,4,7,0};
  unsigned int wk_u400b[10]={3,1,1,7,1,1,2,3,3,9};

  for(i=0,j=1;i<10;i++,j++){
    if(i>=4){
      pt->i400a[i]=j;
      pt->i400a[i+1]=j;
      i++;
    }else{
      pt->i400a[i]=j;
    }
  }

  for(i=0,j=2;i<10;i++,j+=2){
    
    if(i==4)      j=7;
    else if(i==5) j=1;
    pt->i400b[i]=j;
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
    if(i==2 || i==4) pt->f400d[i]=2;
    else if(i==5) pt->f400d[i]=0;
    else          pt->f400d[i]=1;
    pt->f800a[i]=0;
    if(i<5) pt->f800b[i]=1;
    else    pt->f800b[i]=0;
    if(i==3 || i==5 || i==9) pt->u400a[i]=0;
    else                     pt->u400a[i]=1;
    pt->u400b[i]=wk_u400b[i];
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
    if(pt->u400a[i]!=pt->u400b[i]){
      *(fp+i) = pt->i400c[i] < 1;}
      if(pt->u400b[i]!=pt->u400c[i]){
        *(fp+i) = pt->i400c[i] + 1;}
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);

  m = 0;
  for (i=m;i<n;i++)
  {
    *(fp+i) = 99;
    if(pt->u400a[i]!=pt->u400b[i])
    {
      *(fp+i) = pt->i400c[i] < 1;
      if(pt->u400a[i]!=pt->u400b[5])
      {
        *(fp+i) = pt->i400c[i] * 10;
        if(pt->u400a[i]!=pt->u400b[7])
        {
          *(fp+i) = pt->i400c[i] < 1;
          if(pt->u400a[i]!=pt->u400c[1])
            *(fp+i) = pt->i400c[i] < pt->i400b[i] < pt->i400b[3];
          else if(pt->u400b[i]!=pt->u400c[i])
            *(fp+i) = 88;
               else
            *(fp+i) = (88 > pt->i400b[i] > pt->i400b[3] > 10) + 111;
        }
      }
    }
  }
  printf("\n");
  printf("** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400a[i]);

  m = 0;
  for (i=m;i<n;i++)
  {
    *(dp+i) = pt->i400b[i] == 0;
    if(pt->i400b[i]>=1)
      if(pt->i400b[i]>=2)
        if(pt->i400b[i]>3)
          if(pt->i400b[i]>4)
            if(pt->f400b[i]<=9)
              if(pt->f400b[i]<=8)
                if(pt->f400b[i]<7)
                  if(pt->f400b[i]>pt->f400c[i])
                    if(pt->u400a[i]==pt->u400b[i])
                      if(pt->u400a[5]!=pt->u400b[5])
                        if(pt->u400a[i]!=pt->f400b[4])
                          if(pt->i400b[i]!=pt->f400b[i])
                            if(pt->i400b[i]>=pt->i400c[i])
                              if(pt->i400b[i]<=pt->i400b[i])
                                if(pt->i400c[i]==pt->i400c[i])
                                  *(dp+i) = pt->i400c[i];
  }
  printf("\n");
  printf("** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f800a[i]);

  m = 0;
  ip1 = &pt->i400x[0];
  fp1 = &pt->f400d[0];
  dp1 = &pt->f800a[5];
  for (i=m;i<n;i++)
  {
    switch(*(ip1+i) + 2)
    {
    case 4:
      *(fp1+i) = *(ip1+i) != pt->i400c[i];
      break;
    case 5:
      if(pt->u400a[i]!=pt->u400b[i])
        *(fp1+i) = *(ip1+i) + 10;
      else
        *(fp1+i) = *(ip1+i) > 10;
      break;
    case 6:
      if(pt->u400b[i]!=pt->u400c[i])
        *dp1 = pt->i400c[i] * pt->i400c[3];
    default:
      break;
    }
  }
  printf("\n");
  printf("** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f400d[i]);
  printf("\n%f  ",*dp1);

  m = 0;
  ip2 = &pt->i400y[0];
  fps = &f4s;
  dp2 = &pt->f800b[0];
  for (i=m;i<n;i++)
  {
    switch(*(ip2+i) + pt->i400x[i])
    {
    case 4:
      break;
    case 5:
      if(*(ip2+i)!=2)
        if(*(ip2+i)>=2)
          *(dp2+i) = *(ip2+i) + 10;
      break;
    case 6:
      if(pt->u400b[i]==pt->u400c[i]){}
      else
        *fps = (pt->i400c[i] <= pt->i400c[3]) * 3;
    default:
      break;
    }
  }
  printf("\n");
  printf("** TEST 5 **\n");
  for (i=0;i<10;i++) printf("%f  ",pt->f800b[i]);
  printf("\n%f  ",*fps);
  printf("\n");

exit (0);
}
