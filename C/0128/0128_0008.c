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
  int           i401[10],i402[10],i403[10];
  long int      l401[10],l402[10];
  short int     i201[40],i202[40];
  long long int i801[10],i802[10];
  UN_INT        u401[10],u402[10],u403[20];
  UN_I4_INT     ul401[10],ul402[10];
  UN_I2_INT     u201[10],u202[10];
  UN_I8_INT     u801[10],u802[10];

  char          c101[40];
  char          c102[40]="    4567    2345    0123    8901    6789";
  UN_CHAR       uc101[40]="0123    8901    6789    4567    2345    ";
  UN_CHAR       uc102[40]="        89012345        45678901        ";

  float         r401[10],r402[10],r403[10];
  double        r801[10],r802[10],r803[10];
  long double   r1601[10],r1602[10];
  P_I4          *i4p01;
  P_R4          *r4p01,*r4p02;
  P_R8          *r8p01,*r8p02;
  int i,n0,n1,n10,j;

  for(i=0;i<10;i++) {n0=i-i,n1=n0+1,n10=i+1;}

  for(i=n0;i<n10;i+=n1)
  {
    i401[i]=i402[i]=l401[i]=l402[i]=i*1l;
    u401[i]=u402[i]=ul401[i]=ul402[i]=i*2u;
    r401[i]=r402[i]=r801[i]=r802[i]=i*3l;
    i403[i]=r403[i]=r803[i]=i*4l;
  }
  for(j=0;j<20;u403[i]=j,j++);
  for(i=n0;i<n10;i+=n1)
  {
    i801[i]=i802[i]=0;
    r1601[i]=r1602[i]=i*4l;
    u201[i]=u202[i]=i*5u;
    c101[i]=c101[i+10]=c102[i+20]=c101[i+30]=(char)i;
    for(j=n0;j<n10*4;i201[j]=i202[39-j]=j%3,j++);
  }

  i4p01 = &i403[0];
  r4p01 = &r403[0];
  r8p01 = &r803[0];

  printf(" *** test 1 *** \n");

  for(i=n0;i<n10;i=i+n1)
    if (*(r4p01+i)&&l402[i])
      if (i402[i]<r401[i]>r801[i])
        if ((r801[i]=u401[i])>(r401[i]<=*(i4p01+i)))
          r402[i]=0;
        else
          r402[i]=(l401[i]&&i)&n10;
      else
        if ((*(r8p01+i)!=u401[i])>(r401[i]<*(i4p01+i)))
          r402[i]=(u401[i]||i)^i;
        else
          r402[i]=(3||u401[i])|n10*2;
    else
      r402[i]=4&&l401[i]>(u402[i]?n0:i);

  for(i=0;i<10;i++) printf("%g ",r402[i]);
  printf("\n");

  printf(" *** test 2 *** \n");

  r4p02 = &r403[0];
  r8p02 = &r803[0];

  for(i=n0;i<n10;i++)
  {
    if (*(r4p02+i)&&i^n10)
    {
      u401[i] = *(r8p02+i) && l401[i];
      u402[i] = l401[i]-l402[i] ? (r401[i]-10)&&(r401[i]-i):r401[i]||i;
    }
    else
    {
      u401[i] = *(r8p02+i) || !*(i4p01+i) ;
      u402[i] = l401[i]+l402[i] ? ((i<10)&&n10)>i401[i]:r801[i]||l402[i];
    }
    if ((u401[i]!=r801[i])>(r801[i]-(n0==r801[i])))
      ul401[i] =  0;
    else
      ul401[i] = ul402[i]&&i?(i%3)&&i401[i]:((i+n1)%(n1+2))||r401[i];
  }

  for(i=0;i<10;i++) printf("%lu ",ul401[i]);
  printf("\n");

  printf(" *** test 3 *** \n");

  for(i=n0;i<n10;i+=n1)
  {
    switch ((ul401[i]?r801[i]:r802[i])&&(i401[i]?r402[i]:r401[i]))
    {
      case 0:  i402[i]=!(!(*(i4p01+i)||~u401[i])&&!i);
               break;
      case 1:  i402[i]= (~(int)*(r4p01+i)&&ul402[i])>n0;
               break;
      default: i402[i]= !(!(*(r8p01+i)&&i)||~u402[i])+i;
    }
    switch (!(!(!(!(!(i402[i])&&i)||i)&&n1)||n10)&&~i)
    {
      case 1:  i402[i]=!(!(*(i4p01+i)||~u401[i])&&!i);
               break;
      case 0:  i402[i]= (~(int)*(r4p01+i)&&ul402[i])>n0;
               break;
      default: i402[i]= !(!(*(r8p01+i)||i)||~u402[i])+i;
    }
  }

  for(i=0;i<10;i++) printf("%d ",i402[i]);
  printf("\n");

  exit(0);
}

