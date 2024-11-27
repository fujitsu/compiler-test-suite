#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int main()
{
  struct st1 {
    int           i400a[10],i400b[10],i400c[10],i400d[10],i400e[10];
    float         f400a[10],f400b[10];
    double        f800a[10];
    long long int i800a[10];
    unsigned int  u400a[10],u400b[10],u400c[10];
    unsigned long long int u800a[10];
  } t;

  int i,j,k; 
  int        *ip1;
  int        *ip2;
  int        *ip3;
  unsigned int  *up1,*up2,*up3;
  unsigned int wk_u400b[10]={3,4,5,7,1,8,2,3,3,9};

  struct st1 *pt = &t;

  for (i=0,j=2,k=9;i<10;i++,j+=2,k-=2){
    pt->i400a[i]=0;

    if(i==5) j=1;
    pt->i400b[i]=j;

    if(i==5) k=10;
    if(i%2)  pt->i400c[i]=k;
    else     pt->i400c[i]=-k;

    if(i<5) pt->i400d[i]=5;
    else    pt->i400d[i]=9;

    if(i<3)      pt->i400e[i]=2;
    else if(i<5) pt->i400e[i]=3;
    else if(i<7) pt->i400e[i]=-3;
    else         pt->i400e[i]=-2;

    if(i==2 || i== 4 || i==6 || i==7)
      pt->f400a[i]=0;
    else
      pt->f400a[i]=1;
    
    if(i < 4 || 7 < i) pt->f400b[i]=1;
    else               pt->f400b[i]=0;
    
    pt->f800a[i]=0;
    pt->i800a[i]=0;
    pt->u400a[i]=0;
    pt->u400b[i]=wk_u400b[i];
    if(i==1 || i==2 || i==4 || i==6) pt->u400c[i]=2;
    else                             pt->u400c[i]=3;
    pt->u800a[i]=0;
  }

  ip1 = &pt->i400b[0];
  ip2 = ip1;
  for (i=0;i<10;i++)
  {
    pt->i400a[i] = *(ip1+i) + pt->i400c[i];
    if(pt->f400a[i]==pt->f400b[i])
      pt->i400a[i] = *(ip1+i)+i;
    else 
      pt->i400a[i] = *(ip2+i)+2;
  }
  printf("** TEST 1 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 
  ip1 = &pt->i400c[0];
  for (i=0;i<10;i++)
  {
    pt->i400a[i] = pt->i400a[i] + pt->i400b[i];
    if(pt->f400a[i]!=(pt->f400b[i]-1))
      pt->i400a[i] = 77;
    else 
      pt->i400a[i] = pt->i400b[i] - *(ip1+i);
  }
  printf("\n");
  printf("\n** TEST 2 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->i400a[i]);
 
  up1 = &pt->u400a[0];
  up2 = &pt->u400b[0];
  up3 = &pt->u400c[0];
  for (i=0;i<10;i++)
  {
    *(up1+i) = *(up2+i) != *(up3+i);
    if(*(up2+i) == *(up3+i))
      pt->u400a[i] = *(up2+i) && *(up3+i);
    else 
      *(up1+i) = pt->u400b[i] + pt->u400c[i];
  }
  printf("\n");
  printf("\n** TEST 3 **\n");
  for (i=0;i<10;i++) printf("%d  ",pt->u400a[i]);
 
  *ip1 = 1;
  for (i=0;i<10;i++)
  {
    if(pt->f400a[i]!=(pt->f400b[i]-1)){
      pt->i400b[i] = pt->f400a[i]==pt->f400b[i];
      if(pt->f400a[i]!=(pt->f400b[i]-1)){
        pt->i400a[i] = pt->i400b[i];
        pt->u400a[i] = pt->u800a[i]
        = pt->i800a[i] = pt->f800a[i] = pt->f400a[i] = pt->i400a[i]+1;
      }
    else 
      pt->i400a[i] = pt->i400c[i] - *(ip1+i);}
  }
  printf("\n");
  printf("\n** TEST 4 **\n");
  for (i=0;i<10;i++) printf("%d   ",pt->i400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",(int)pt->i800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f   ",pt->f400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%f   ",pt->f800a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",pt->u400a[i]);
  printf("\n");
  for (i=0;i<10;i++) printf("%d   ",(int)pt->u800a[i]);
  printf("\n");
  exit(0);
}
