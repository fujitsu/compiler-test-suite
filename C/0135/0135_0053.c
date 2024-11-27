#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int force(int *a, float *b);

int main (void)
  {
    static float   a[1000],f[3];
    float   t=5;
    int     n26=500,mb;
    int     i,j,k;

    for(i=0;i<1000;i++) a[i]=1;

    for(i=0;i<n26;i+=26) {
      a[i]=t;
      mb=(i+25)/2;
      force(&mb,f);

      for(j=0;j<3;j++) {
	k=i+j;
	a[k+10]=f[j];
      }
    }

    printf("##  ##\n");
    for(i=0;i<1000;i+=10) printf("%f ",a[i]);
    printf("\n");
    exit(0);
  }  

int force(int *a, float *b)
  {
    *a=2.;
    b[0]=1, b[1]=2, b[2]=3;
  }
