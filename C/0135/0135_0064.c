#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int hcgen();

int main()
  {
    hcgen();
    exit(0);
  }
	 
int hcgen()
  {
    float    re[121],s[121];
    int      c[121];
    int      nb1=121,a,b,dbeta,edta,beta;
    int      i,j;
    float    rb=1.e0,sqb;

    a=10+rb;
    b=15;
    dbeta=30;
    beta=-dbeta;

    for(i=0; i<nb1; i++) {
      beta+=dbeta;
      c[i]=cos(beta);
      s[i]=sin(beta);
      sqb=sqrt(pow(b*c[i],2) + pow(a*s[i],2));
      re[i]=a*b/sqb;
    }
    printf("##  ##\n");

    for(i=0;i<121;) {
      for(j=0; i<121 && j<10 ;j++,i++) printf("%f ",re[i]);
      printf("\n");
    }
  }
