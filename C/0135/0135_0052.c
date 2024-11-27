#include <stdlib.h>


#include <stdio.h>
#include <math.h>
int cengr (int n1, int n2, float *cg);

float   g[2][200],rv[500];
int main (void)
  {
    float   cg[7];
    int     nb,n6;
    int     i,j;
    int     n1=0, n2=200;
    
    for(j=0;j<2;j++)
      for(i=0;i<200;i++) g[j][i]=1.;
    for(i=0;i<500;i++) rv[i]=2.;

    cengr(n1,n2,cg);
    printf("##  ##\n");
    for(i=0;i<7;i++) printf("%f ",cg[i]);
    printf("\n");
    exit(0);
  }  

int cengr (int n1, int n2, float *cg)
  {
    int     i,j,k,l;

    for(i=0;i<7;i++) cg[i]=0.0;
    
    for(l=n1;l<n2;l++) {
      i=2*l;
      for(j=0;j<6;j++) {
	k=i+j;
	cg[j]=cg[j]+g[1][l]*rv[k];
	cg[6]=cg[6]+g[1][l];
      }
    }
  }
