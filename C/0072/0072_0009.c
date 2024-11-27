#include <stdlib.h>
#include <stdio.h>
#include <math.h>

int union_t();

#define MM -mm
  struct st4
  {
    int      i403[10];
    float    r403[10];
    double   r803[10];
  }com4[10];
int main()
{
  struct st1
  {
    int      i401[10];
    long int l401[10];
    float    r401[10];
    double   r801[10];
  };
  struct st2
  {
    unsigned int ui401[10];
    unsigned long int ul401[10];
  };
  struct st3
  {
    struct st1 stcom1;
    int    i402[10];
    float  r402[10];
    double r802[10];
  };
  int i,j;
  int    *i4p01;
  float  *r4p01;
  double *r8p01;
  int    i404=1;
  float  r404=1;
  double r804;
  struct st1 com1,*stp00;
  struct st2 com2,*stp02;
  struct st3 com3,*stp01;
  
  stp00 = &com1;
  stp01 = &com3;
  stp02 = &com2;
  

  printf("\n ******** struct  ******** \n");
  for(i=0;i<10;i++)
  {
    stp00->i401[i]=(int)((sin((double)i)+0.5)*10);
    stp00->l401[i]=(long)((cos((double)i)+0.5)*10);
    stp00->r401[i]=tan((double)i);
    stp00->r801[i]=sinh((double)i);
    stp02->ui401[i]=(int)((cosh((double)i)+0.5)*10);
    stp02->ul401[i]=(long)((tanh((double)i)+0.5)*10);
    stp01->i402[i]=(int)((exp((double)i)+0.5)*10);
    stp01->r402[i]=acos(0);
    stp01->r802[i]=atan((double)i);
    stp01->stcom1.i401[i]=(int)(log((double)(i+1))+0.5);
    stp01->stcom1.l401[i]=(long)(log10((double)(i+1))+0.5);
    stp01->stcom1.r401[i]=sqrt((double)i);
    stp01->stcom1.r801[i]=fmod((double)i,1);
  }
  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
    {
      com4[j].i403[i]=i;
      com4[j].r403[i]=i;
      com4[j].r803[i]=i;
    }
  i4p01=&(stp00->i401[0]);
  r4p01=&(stp00->r401[0]);
  r8p01=&(stp00->r801[0]);
  printf("\n *** test 1 *** \n");
  for(i=0;i<10;i++)
  {
    if (i404)
    {
      stp01->r802[i] = *(r4p01+i) - stp01->stcom1.r801[i];
      *(i4p01+i) = (int)((stp00->r801[i])+stp01->r802[i]);
    }
    stp01->r802[i] += i;
  }
  for(i=0;i<10;i++) printf("%g ",stp01->r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",stp00->i401[i]);printf("\n");
  printf("\n  *** test 2 *** \n");
  for(i=0,j=0;i<10;i++)
  {
    if (i404=com4[i].i403[i] - com4[i].r403[i] < com4[i].r803[i])
      stp01->stcom1.l401[i] -= stp01->stcom1.i401[i] += (i<stp00->r401[i]?
        (stp02->ul401[i]+=i,stp01->stcom1.r801[i]-=-stp00->i401[i]):
        (stp00->r801[i]*=stp01->r402[i]<stp01->r802[i],
        stp00->l401[i]=stp01->stcom1.r401[i]*stp01->i402[i]));
    else
      stp01->stcom1.l401[i] =
        (stp02->ui401[i]=(stp00->r801[i]<0,stp02->ul401[i]=i&&r404)?
        (stp00->i401[i]+=(stp01->i402[i]=(i+1)%2,stp02->ul401[i]*=i)):
        (stp00->i401[i]-=(stp01->stcom1.i401[i]*=stp02->ul401[i],j++)));
  }
  for(i=0;i<10;i++) printf("%ld ",stp01->stcom1.l401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",stp01->stcom1.i401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%lu ",stp02->ul401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp01->stcom1.r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp00->r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%ld ",stp00->l401[i]);printf("\n");
  printf("%d %d \n",i404,j);
  printf("\n  *** test 3 *** \n");
  for(i=0;i<10;i++)
    for(j=0;j<10;j++)
    {
      com4[j].r803[i] *= sinh(com4[j].r803[i]);
      com4[j].r403[i] += cosh(com4[j].r403[i]);
      com4[j].i403[i] = i&j | stp00->i401[j]&stp00->i401[i] ;
      r804 = (sin((double)i)+cos((double)j));
      com4[j].r803[i] += r804 = (i?r804*10:r804/10);
      stp01->r802[j] += com4[j].r803[i] ;
      if (com4[j].i403[i])
      {
        com4[j].r403[i] = r804 * stp01->r802[j] ;
        r404=(double)(int)(com4[j].i403[i]+0.5)/
         (fmod(com4[j].r803[i],com4[j].r403[i])?
          fmod(com4[j].r803[i],com4[j].r403[i]):
          fmod(com4[j].r803[i],com4[j].r403[i])+1);
      }
      stp00->r401[i] -= com4[j].r403[i];
    }
  for(i=0;i<10;i++) printf("%g ",stp01->r802[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp00->r401[i]);printf("\n");
  printf("%f \n",r404);
  printf("\n  *** test 4 *** \n");
  for(i=0;i<10;i++)
  {
    stp01->i402[i] += i;
    i404 = stp01->r402[i] += stp01->r802[i] ;
    if (i404&&stp01->stcom1.i401[i])
    {
      stp01->stcom1.r401[i] +=-stp01->stcom1.r801[i];
      stp01->stcom1.r801[i] +=stp01->stcom1.r401[i];
    }
    stp01->r402[i] =( stp01->r802[i]=stp01->r802[i]<i ?
    (stp01->i402[i]+=stp01->stcom1.r401[i]*=stp02->ul401[i]):
    (stp01->i402[i]=stp01->stcom1.r401[i]*=stp02->ui401[i]));
  }
  for(i=0;i<10;i++) printf("%g ",stp01->r402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",stp01->i402[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp01->stcom1.r401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp01->stcom1.r801[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",stp01->r802[i]);printf("\n");
  printf("\n  *** test 5 *** \n");
  for(i=0;i<10;i++)
  {
    (*stp02).ui401[i] =fabs(((fabs((*stp02).ul401[i])>0) ?
     (com4[i].r403[i]=stp01->r402[i]+=stp00->r401[i]/stp01->stcom1.r401[i]):
     (com4[i].r403[i]=stp01->r402[i]-=stp00->r801[i]-stp01->stcom1.r801[i])));
    if ((*stp02).ui401[i]) r404=(i404=stp00->l401[i],stp01->stcom1.l401[i]=i);
    if (r404-stp01->stcom1.l401[i])
      (*stp02).ul401[i] *=i + i;
    else
      (*stp02).ul401[i] %= (i+1) + i;
  }
  for(i=0;i<10;i++) printf("%lu ",stp02->ul401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%u ",stp02->ui401[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",com4[i].r403[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",com4[i].r803[i]);printf("\n");
  printf("%g %d \n",r404,i404);
  union_t();
exit (0);
}
int union_t()
{
  union un1
  {
    long          i411[10];
    long          i412[10];
    long          l411[10];
    unsigned long ul411[10];
    unsigned long ui411[10];
  };

  union un2
  {
    float  r411[10];
    float  r412[10];
  };
  union un3
  {
    double r811[10];
    double r812[10];
  };
  union un4
  {
    double d814[10];
    double r414[10];
    double r814[10];
  };
  int i,j,mm;
  int i415[10];
  float r415=0;
  double dbl01=0.0;
  union un1 equ1;
  union un2 equ2;
  union un3 equ3;
  union un4 equ4;
  printf("\n\n ******** union ******** \n");
  
  for(i=0;i<10;i415[i]=-i,i++)
  {
    equ1.i411[i]=(int)(sqrt((double)i)+0.5);
    equ2.r411[i]=sqrt((double)(i+1));
    equ3.r811[i]=sqrt((double)(i+2));
  }
  for(i=0;i<10;i++) equ4.d814[i]=sqrt((double)(i+3));
  for(i=0;i<10;i++) printf("%d ",equ1.l411[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ2.r412[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ3.r812[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ4.d814[i]);printf("\n");
  printf("\n  *** test 6 *** \n");
  for(i=0;i<10;i++,r415*=2);
  for(i=0;i<10;i++)
    if (equ1.ui411[i]==equ1.i411[i])
    {
      equ2.r411[i] = (float)(equ1.ul411[i]) * com4[i].r803[i] ;
      i415[i] = (int)((equ1.i412[i] + equ2.r411[i])+0.5);
    }
    else
    {
      equ3.r812[i] = (double)(equ1.i412[i]) / (r415+1) ;
      i415[i] = (int)((equ3.r812[i] + com4[i].r403[i])+0.5);
    }
  for(i=0;i<10;i++) printf("%g ",equ2.r412[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ3.r811[i]);printf("\n");
  for(i=0;i<10;i++) printf("%d ",i415[i]);printf("\n");
  printf("%g\n",r415);
  printf("\n  *** test 7 *** \n");
  for(i=0,r415=2,mm=1;i<10;i++)
  {
    equ1.ul411[i] -= i415[i] ;
    r415 = equ2.r411[i] * com4[i].r803[i] - equ3.r812[i] ;
    equ3.r811[i] = equ1.l411[i] * com4[i].i403[i];
    ((equ1.i411[i]>0)?(equ1.ui411[i]%=(i+1)):(equ1.l411[i]*=MM));
    equ2.r412[i]=equ3.r811[i]-equ1.i411[i];
  }
  for(i=0;i<10;i++) printf("%u ",equ1.ui411[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ2.r411[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ3.r811[i]);printf("\n");
  printf("%g \n",r415);
  printf("\n  *** test 8 *** \n");
  for(i=0;i<10;i++)
  {
    equ4.d814[i] = equ1.ui411[i] * equ2.r411[i];
    if (dbl01=equ4.r414[i])
      equ3.r811[i] += pow((double)i,2);
    else
    {
      equ3.r811[i] -= pow((double)i,3);
      com4[i].r803[i] = i;
    }
    equ4.r814[i] = equ3.r811[i]+com4[i].r803[i];
  }
  for(i=0;i<10;i++) printf("%g ",equ4.d814[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ3.r811[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",com4[i].r803[i]);printf("\n");
  for(i=0;i<10;i++) printf("%g ",equ4.r814[i]);printf("\n");
  printf("%g ",dbl01);printf("\n");
}
