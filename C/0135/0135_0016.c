#include <stdlib.h>



#include <stdio.h>
#include <math.h>
int sub1 (double *a);

typedef struct{
        float real;
        float imag;
}complex8;
typedef struct{
        double dreal;
        double dimag;
}complex16;

union {
  complex8       c[1000];
  double         cc[1000];
} ccc;
union {
  complex16      cq[1000];
  double         ccq[1000];
} cqq;

union {
  complex8       d;
  double         dd;
} ddd;
union {
  complex8       q;
  double         qq;
} qqq;
union {
  complex8       dbl;
  double         dbll;
} dblll;

int main (void)
{
  int            i,j,m,l;

  for(i=0;i<1000;i++) cqq.ccq[i]=ccc.cc[i]=0;
  for(i=1;i<1000;i++) {
    ccc.cc[i]=i ;
    dblll.dbll=ccc.cc[i]=i;
    sub1(&dblll);
    for(m=0;m<10;m++) {
      dblll.dbll=ccc.cc[i]*m;
    }
    ddd.dd=dblll.dbll;
    for(l=30;l<600;l++) {
      cqq.ccq[i]=ddd.dd+(dblll.dbll/ccc.cc[i])*l;
      qqq.qq=cqq.ccq[i]/(i+1);
    }	  
  }
  printf("##  ##\n");
  for(i=0;i<600;) {
    for(j=0;j<10;j++,i++) printf("%g %g ",cqq.cq[i].dreal,cqq.cq[i].dimag);
    printf("\n");
  }
  exit(0);
}

int sub1 (double *a)
{
 short       h=5;
 long double cd;
 int         j,k;
 
 cd=.0;
 for(j=1;j<5;j++) 
   {
     *a=pow(((*a)/(double)h),j);
     if( *a > 0 )
       {
	for( k=	2000;k<6000;k+=400 ) {
          cd+=k;
          }	 
        }	 
     *a+=cd;
    }
}

