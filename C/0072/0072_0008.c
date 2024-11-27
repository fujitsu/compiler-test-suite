#include <stdlib.h>
#include <stdio.h>
#include <math.h>

typedef unsigned int            UN_INT;
typedef unsigned long int       UN_I4_INT;
typedef unsigned short int      UN_I2_INT;
typedef unsigned long long int  UN_I8_INT;

typedef unsigned char           UN_CHAR;
typedef int                     P_I4;
typedef float                   P_R4;
typedef double                  P_R8;
int main()
{
  struct st1 {
    int            i401[10],i402[10],i403[10];
    long  int      l401[10],l402[10];
    short int      i201[40],i202[40];
    long  long int i801[10],i802[10];
    UN_INT         u401[10],u402[10],u403[20];
    UN_I4_INT      ul401[10],ul402[10];
    UN_I2_INT      u201[10],u202[10];
    UN_I8_INT      u801[10],u802[10];
    char           c101[40];
    char           c102[40];
    UN_CHAR        uc101[40];
    UN_CHAR        uc102[40];
    float          r401[10],r402[10],r403[10];
    double         r801[10],r802[10],r803[10];
    long double    r1601[10],r1602[10];
} t;

  int i,n0,n1,n10,j;
  struct st1 *pt = &t;
  char    wk_c102[40]  ="    4567    2345    0123    8901    6789";
  UN_CHAR wk_uc101[40] ="0123    8901    6789    4567    2345    ";
  UN_CHAR wk_uc102[40]="        89012345        45678901        ";
  P_I4          *i4p01;
  P_R4          *r4p01,*r4p02;
  P_R8          *r8p01,*r8p02;

  for(i=0;i<40;i++){
    pt->c102[i]  =wk_c102[i];
    pt->uc101[i] =wk_uc101[i];
    pt->uc102[i]=wk_uc102[i];
  }

  for(i=0;i<10;i++) {n0=i-i,n1=n0+1,n10=i+1;}

  for(i=n0;i<n10;i+=n1)
  {
    pt->i401[i]=pt->i402[i]=pt->l401[i]=pt->l402[i]=i*1l;
    pt->u401[i]=pt->u402[i]=pt->ul401[i]=pt->ul402[i]=i*2u;
    pt->r401[i]=pt->r402[i]=pt->r801[i]=pt->r802[i]=i*3l;
    pt->i403[i]=pt->r403[i]=pt->r803[i]=i*4l;
  }
  for(j=0;j<20;pt->u403[i]=j,j++);
  for(i=n0;i<n10;i+=n1)
  {
    pt->i801[i]=pt->i802[i]=0;
    pt->r1601[i]=pt->r1602[i]=i*4l;
    pt->u201[i]=pt->u202[i]=i*5u;
    pt->c101[i]=pt->c101[i+10]=pt->c102[i+20]=pt->c101[i+30]=(char)i;
    for(j=n0;j<n10*4;pt->i201[j]=pt->i202[39-j]=j%3,j++);
  }


  i4p01 = &pt->i403[0];
  r4p01 = &pt->r403[0];
  r8p01 = &pt->r803[0];

  printf(" *** test 1 *** \n");

  for(i=n0;i<n10;i=i+n1)
    if (*(r4p01+i)&&pt->l402[i])
      if (pt->i402[i]<pt->r401[i]>pt->r801[i])
        if ((pt->r801[i]=pt->u401[i])>(pt->r401[i]<=*(i4p01+i)))
          pt->r402[i]=0;
        else
          pt->r402[i]=(pt->l401[i]&&i)&n10;
      else
        if ((*(r8p01+i)!=pt->u401[i])>(pt->r401[i]<*(i4p01+i)))
          pt->r402[i]=(pt->u401[i]||i)^i;
        else
          pt->r402[i]=(3||pt->u401[i])|n10*2;
    else
      pt->r402[i]=4&&pt->l401[i]>(pt->u402[i]?n0:i);

  for(i=0;i<10;i++) printf("%g ",pt->r402[i]);
  printf("\n");

  printf(" *** test 2 *** \n");


  r4p02 = &pt->r403[0];
  r8p02 = &pt->r803[0];

  for(i=n0;i<n10;i++)
  {
    if (*(r4p02+i)&&i^n10)
    {
      pt->u401[i] = *(r8p02+i) && pt->l401[i];
      pt->u402[i] = pt->l401[i]-pt->l402[i] ? (pt->r401[i]-10)&&(pt->r401[i]-i):pt->r401[i]||i;
    }
    else
    {
      pt->u401[i] = *(r8p02+i) || !*(i4p01+i) ;
      pt->u402[i] = pt->l401[i]+pt->l402[i] ? ((i<10)&&n10)>pt->i401[i]:pt->r801[i]||pt->l402[i];
    }
    if ((pt->u401[i]!=pt->r801[i])>(pt->r801[i]-(n0==pt->r801[i])))
      pt->ul401[i] =  0;
    else
      pt->ul401[i] = pt->ul402[i]&&i?(i%3)&&pt->i401[i]:((i+n1)%(n1+2))||pt->r401[i];
  }

  for(i=0;i<10;i++) printf("%lu ",pt->ul401[i]);
  printf("\n");

  printf(" *** test 3 *** \n");

  for(i=n0;i<n10;i+=n1)
  {
    switch ((pt->ul401[i]?pt->r801[i]:pt->r802[i])&&(pt->i401[i]?pt->r402[i]:pt->r401[i]))
    {
      case 0:  pt->i402[i]=!(!(*(i4p01+i)||~pt->u401[i])&&!i);
               break;
      case 1:  pt->i402[i]= (~(int)*(r4p01+i)&&pt->ul402[i])>n0;
               break;
      default: pt->i402[i]= !(!(*(r8p01+i)&&i)||~pt->u402[i])+i;
    }
    switch (!(!(!(!(!(pt->i402[i])&&i)||i)&&n1)||n10)&&~i)
    {
      case 1:  pt->i402[i]=!(!(*(i4p01+i)||~pt->u401[i])&&!i);
               break;
      case 0:  pt->i402[i]= (~(int)*(r4p01+i)&&pt->ul402[i])>n0;
               break;
      default: pt->i402[i]= !(!(*(r8p01+i)||i)||~pt->u402[i])+i;
    }
  }

  for(i=0;i<10;i++) printf("%d ",pt->i402[i]);
  printf("\n");

  exit(0);
}


